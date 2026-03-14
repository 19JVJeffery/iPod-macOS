#!/bin/sh
set -e
set -u
set -o pipefail

function on_error {
  echo "$(realpath 0):${1}: error: The shell script phase \"[CP] Embed Pods Frameworks\" failed with a nonzero exit code." >&2
}
trap 'on_error $LINENO' ERR

if [ -z ${FRAMEWORKS_FOLDER_PATH+x} ]; then
  # If FRAMEWORKS_FOLDER_PATH is not set, then there's nothing for us to do.
  exit 0
fi

echo "mkdir -p ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
mkdir -p "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"

COCOAPODS_PARALLEL_CODE_SIGN="${COCOAPODS_PARALLEL_CODE_SIGN:-false}"
SWIFT_STDLIB_PATH="${DT_TOOLCHAIN_DIR}/usr/lib/swift/${PLATFORM_NAME}"
BCSYMBOLMAP_DIR="BCSymbolMaps"
# Used as a shorthand while reading input files list
DESTINATION="${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"

RS_SCRIPT_INPUT_FILE_COUNT=${SCRIPT_INPUT_FILE_COUNT:-0}
RS_SCRIPT_OUTPUT_FILE_COUNT=${SCRIPT_OUTPUT_FILE_COUNT:-0}

if [ "${RS_SCRIPT_INPUT_FILE_COUNT}" -eq 0 ]; then
  echo "No frameworks to embed; skipping."
  exit 0
fi
