#!/usr/bin/env bash
set -euo pipefail
[[ -n "${TRACE:-}" ]] && set -x
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main() {
  echo "update-content begin"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    update-content begin" >> "$HOME/status"

  echo "update-content end"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    update-content end" >> "$HOME/status"
}

main "$@"
