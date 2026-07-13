#!/bin/bash
set -euo pipefail

# OPEX Starter Kit Installer
# Installs OPEX for Claude Code

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-.}"

echo "Installing OPEX Starter Kit..."

# Check if Claude Code is installed
if ! command -v claude &> /dev/null; then
    echo "Claude Code not found. Installing..."
    npm install -g @anthropic-ai/claude-code
fi

# Copy plugin files
echo "Copying plugin files..."
cp -r "$SCRIPT_DIR/.claude-plugin" "$TARGET_DIR/"
cp -r "$SCRIPT_DIR/.claude" "$TARGET_DIR/"
cp "$SCRIPT_DIR/settings.json" "$TARGET_DIR/"

# Copy business directory if it doesn't exist
if [ ! -d "$TARGET_DIR/business" ]; then
    echo "Creating business directory..."
    cp -r "$SCRIPT_DIR/business" "$TARGET_DIR/"
fi

echo "OPEX installed successfully!"
echo ""
echo "To start, run:"
echo "  cd $TARGET_DIR"
echo "  claude"
echo ""
echo "Then say: Hey OPEX"
