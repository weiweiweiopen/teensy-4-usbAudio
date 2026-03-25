#!/usr/bin/env bash

set -euo pipefail

TARGET_REPO="weiweiweiopen/6-8-CS42448-laser-DAC"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if ! command -v gh >/dev/null 2>&1; then
  printf 'GitHub CLI (`gh`) is required but not installed.\n' >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  printf 'GitHub CLI is installed, but you are not authenticated. Run `gh auth login`.\n' >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

gh repo clone "${TARGET_REPO}" "${TMP_DIR}/repo"
mkdir -p "${TMP_DIR}/repo/kicad"
rm -rf "${TMP_DIR}/repo/kicad/6_8_cs42448_laser_dac"
cp -R "${PACKAGE_DIR}" "${TMP_DIR}/repo/kicad/6_8_cs42448_laser_dac"

printf 'Package copied to %s\n' "${TMP_DIR}/repo/kicad/6_8_cs42448_laser_dac"
printf 'Review the clone, then commit and push from that repo if everything looks correct.\n'
