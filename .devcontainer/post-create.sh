#!/bin/bash
#!/usr/bin/env bash
set -euo pipefail
[[ -n "${TRACE:-}" ]] && set -x
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main() {
  echo "post-create begin"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    post-create begin" >> "$HOME/status"

  echo "post-create end"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    post-create end" >> "$HOME/status"
}

main "$@"
