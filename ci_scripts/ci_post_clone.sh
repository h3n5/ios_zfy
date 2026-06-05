#!/bin/sh
# Ensure Xcode build phase scripts are executable in Xcode Cloud.
REPO_ROOT="${CI_PRIMARY_REPOSITORY_PATH:-$(cd "$(dirname "$0")/.." && pwd)}"
SCRIPT_PATH="$REPO_ROOT/智服云/Scripts/copy-www-build-step.sh"

if [ ! -f "$SCRIPT_PATH" ]; then
  echo "error: Build script not found: $SCRIPT_PATH"
  exit 1
fi

chmod +x "$SCRIPT_PATH"
