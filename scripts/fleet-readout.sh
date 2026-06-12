#!/usr/bin/env bash
# Regenerate the live readout blocks in the profile README: the tailnet
# device list and the k3s pod sweep. Output is paste-ready for a fenced
# code block and stays under ~44 chars wide so phones render it without
# a horizontal scroll.
#
# PII rules (same as the README banner): tailnet IPs, tailnet FQDNs,
# account labels, and public IPs never reach the output - only
# hostnames, OS, and state. Third-party devices on the shared tailnet
# are excluded. Pod hash suffixes (deployment/job/statefulset) are
# opaque identifiers and drop too.
#
# kubectl quirk: the kubeconfig default https://kai-server:6443 answers
# Bad Gateway on this path, so we point at kai-server.local. The API
# cert has no kai-server.local SAN, hence skip-tls-verify; drop it once
# the k3s tls-san gains the .local name.
#
# Usage:
#   scripts/fleet-readout.sh            # both blocks
#   scripts/fleet-readout.sh tailnet    # tailscale block only
#   scripts/fleet-readout.sh pods       # k8s block only
set -euo pipefail

# Devices owned by other people on the shared tailnet. Never listed.
THIRD_PARTY='^(kats-macbook-pro|iphone-13-pro)$'

tailnet() {
  echo '$ tailscale status'
  coily tailscale status | awk -v third="$THIRD_PARTY" '
    $2 ~ third { skipped++; next }
    {
      glyph = ($0 ~ /offline/) ? "○" : "●"
      name = $2
      if (length(name) > 28) name = substr(name, 1, 27) "…"
      printf "  %s %-28s %s\n", glyph, name, tolower($4)
      total++
    }
    END {
      printf "  %d devices · 1 tailnet · 2 sites\n", total
    }'
}

pods() {
  echo '$ kubectl get pods -A'
  coily ops kubectl -- \
    --server=https://kai-server.local:6443 \
    --insecure-skip-tls-verify \
    get pods -A --no-headers | awk '
    {
      ns = $1; name = $2; status = $4
      # Strip opaque suffixes: deploy <hex8-10>-<5>, then
      # statefulset ordinals, then bare job/daemonset <5>.
      if (name ~ /-[0-9a-f]{8,10}-[a-z0-9]{5}$/) {
        sub(/-[0-9a-f]{8,10}-[a-z0-9]{5}$/, "", name)
      } else {
        while (name ~ /-[0-9]+$/) sub(/-[0-9]+$/, "", name)
        if (name ~ /-[a-z0-9]{5}$/ && $2 ~ /[0-9]/) {
          sub(/-[a-z0-9]{5}$/, "", name)
        }
      }
      if (length(name) > 30) name = substr(name, 1, 29) "…"
      g = "◌"
      if (status == "Running") g = "●"
      else if (status == "Completed") g = "✓"
      else if (status ~ /Error|CrashLoop/) g = "✗"
      key = ns "/" name "/" g
      count[key]++
      if (!(ns in seen_ns)) { ns_order[++n_ns] = ns; seen_ns[ns] = 1 }
      if (!(key in seen_key)) { key_order[ns] = key_order[ns] key SUBSEP; seen_key[key] = 1 }
      total++
      namespaces[ns] = 1
    }
    END {
      for (i = 1; i <= n_ns; i++) {
        ns = ns_order[i]
        printf "  %s/\n", ns
        split(key_order[ns], keys, SUBSEP)
        for (j = 1; j in keys; j++) {
          key = keys[j]
          if (key == "") continue
          split(key, parts, "/")
          line = "    " parts[3] " " parts[2]
          if (count[key] > 1) line = line " ×" count[key]
          print line
        }
      }
      n = 0; for (ns in namespaces) n++
      printf "  %d pods · %d namespaces · 1 node\n", total, n
    }'
}

case "${1:-all}" in
  tailnet) tailnet ;;
  pods) pods ;;
  all) tailnet; echo; pods ;;
  *) echo "usage: $0 [tailnet|pods]" >&2; exit 64 ;;
esac
