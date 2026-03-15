#!/bin/sh
# detect_flutter.sh – sets FLUTTER_ROOT if it is not already set.
#
# When Flutter-Generated.xcconfig is absent (e.g. on a fresh clone before
# 'flutter pub get' has been run), this script tries to locate the Flutter
# SDK by checking common macOS installation paths.  If found, it resolves
# any symlink (Homebrew, etc.) and sets FLUTTER_ROOT accordingly.

if [ -z "$FLUTTER_ROOT" ]; then
  for FLUTTER_BIN in \
    "$(command -v flutter 2>/dev/null)" \
    "/opt/homebrew/bin/flutter" \
    "/usr/local/bin/flutter" \
    "$HOME/flutter/bin/flutter" \
    "$HOME/development/flutter/bin/flutter"
  do
    if [ -n "$FLUTTER_BIN" ] && [ -x "$FLUTTER_BIN" ]; then
      LINK=$(readlink "$FLUTTER_BIN" 2>/dev/null)
      if [ -n "$LINK" ] && [ "${LINK#/}" != "$LINK" ]; then
        # Absolute symlink – derive root from the resolved target
        FLUTTER_ROOT=$(dirname "$(dirname "$LINK")")
      else
        # No symlink or relative symlink – derive root directly
        FLUTTER_ROOT=$(dirname "$(dirname "$FLUTTER_BIN")")
      fi
      break
    fi
  done
fi
