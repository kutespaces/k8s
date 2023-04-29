#!/usr/bin/env bash
set -euo pipefail
[[ -n "${TRACE:-}" ]] && set -x
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main() {
  echo "post-start begin"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    post-start begin" >> "$HOME/status"

  echo "post-start end"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    post-start end" >> "$HOME/status"
}

main "$@"
