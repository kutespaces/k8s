#!/usr/bin/env bash
set -euo pipefail
[[ -n "${TRACE:-}" ]] && set -x
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

main() {
  echo "on-create begin"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    on-create begin" >> "$HOME/status"

  # this runs as part of pre-build
  echo "creating local registry"
  docker network create k3d
  k3d registry create registry.localhost --port 5500
  docker network connect k3d k3d-registry.localhost

  echo "creating k3d cluster"
  k3d cluster create -c .devcontainer/k3d.yaml

  echo "on-create end"
  echo "$(date +'%Y-%m-%d %H:%M:%S')    on-create end" >> "$HOME/status"
}

main "$@"
