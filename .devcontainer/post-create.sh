#!/bin/bash

# Post-create script for GitHub Codespaces
# Installs OpenCode CLI

echo "🚀 Setting up OpenCode..."

curl -fsSL https://opencode.ai/install | bash

# refresh the shell environment to recognize opencode command
source ~/.bashrc

# get opencode bin location
OPENCODE_BIN=$(which opencode)

# One-line install weclaw
curl -sSL https://raw.githubusercontent.com/fastclaw-ai/weclaw/main/install.sh | sh

# Create weclaw config directory and config file
mkdir -p ~/.weclaw

cat > ~/.weclaw/config.json << 'EOF'
{
  "default_agent": "opencode",
  "agents": {
    "opencode": {
      "type": "acp",
      "command": "$OPENCODE_BIN",
      "args": ["acp"],
      "model": "opencode/minimax-m2.5-free"
    }
  }
}
EOF
