#!/usr/bin/env bash
# ==============================================================================
# BIRUK-OS 4-PANE HACKER UI ORCHESTRATOR
# Opens the exact 4-pane layout:
# Pane 1 (Top-Left): Fastfetch
# Pane 2 (Top-Right): CAVA Reactive Audio
# Pane 3 (Bottom-Left): Top System Monitor
# Pane 4 (Bottom-Right): Beti AI Neural Engine
# ==============================================================================
set -e

# Allow Hyprland compositor to initialize
sleep 1.2

# 1. Top-Left: Fastfetch
kitty --class hacker_fastfetch --title "Biruk-OS Diagnostics" bash -c "fastfetch; exec bash" &
sleep 0.4

# 2. Top-Right: CAVA
kitty --class hacker_cava --title "CAVA Audio Visualizer" -e cava &
sleep 0.4

# 3. Bottom-Left: Top System Monitor
kitty --class hacker_top --title "System Performance Monitor" -e top &
sleep 0.4

# 4. Bottom-Right: Beti AI Neural Engine Console
kitty --class hacker_beti --title "Beti AI Neural Engine" bash -c "python /opt/beti_ai/beti_core.py; exec bash" &
