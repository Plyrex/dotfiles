#!/bin/bash
# Define your TUI application and terminal
TUI_APP="wiremix"
TERMINAL="ghostty" # Change to your terminal emulator (e.g., foot, alacritty)

# Check if the process is already running
if pidof $TUI_APP > /dev/null; then
    # If running, kill it
    pkill $TUI_APP
else
    # If not running, open it in a terminal
    $TERMINAL --title="float-tui" --confirm-close-surface="false" -e $TUI_APP
fi
