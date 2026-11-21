#!/bin/bash
# Biruk-OS Live Initialization Script
set -e

# Ensure NetworkManager is started
systemctl start NetworkManager.service 2>/dev/null || true

# Ensure SDDM is started if not already running
if ! pgrep -x "sddm" > /dev/null; then
    systemctl start sddm.service 2>/dev/null || true
fi
