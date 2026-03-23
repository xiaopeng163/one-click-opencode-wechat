#!/bin/bash

# Post-create script for GitHub Codespaces
# Installs OpenCode CLI

echo "🚀 Setting up OpenCode..."

# Install OpenCode CLI
npm install -g @opencode/cli

# Verify installation
if command -v opencode &> /dev/null; then
    echo "✅ OpenCode CLI installed successfully!"
    opencode --version
else
    echo "❌ Failed to install OpenCode CLI"
    exit 1
fi

# Optional: Initialize OpenCode configuration
# opencode init

echo "🎉 Setup complete! You can now use OpenCode in this Codespace."
echo "Run 'opencode' to get started."
