#!/bin/bash
set -euo pipefail

mkdir -p /tmp/setup-scripts /tmp/runtime-scripts
LOG=/tmp/runtime-scripts/setup-rhel2.log

echo "starting setup-rhel2.sh" >> "$LOG"
echo "LITELLM_API_KEY: ${LITELLM_API_KEY:+(set)}" >> "$LOG"

cat << EOF > /tmp/setup-scripts/litellm.env
export LITELLM_API_KEY='$LITELLM_API_KEY'
export LITELLM_API_URL='$LITELLM_API_URL'
EOF

chmod 600 /tmp/setup-scripts/litellm.env

if [[ ! -d /tmp/goose ]]; then
    echo "Cloning goose..." >> "$LOG"
    git clone https://github.com/block/goose.git /tmp/goose >> "$LOG" 2>&1
fi

echo "setup-rhel2.sh complete" >> "$LOG"
