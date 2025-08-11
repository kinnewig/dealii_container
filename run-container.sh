#!/bin/sh

# Colours for progress and error reporting
ERROR="\033[1;31m"
GOOD="\033[1;32m"
WARN="\033[1;35m"
INFO="\033[1;34m"
BOLD="\033[1m"

cecho() {
    # Display messages in a specified colour
    COL=$1; shift
    echo -e "${COL}$@\033[0m"
}

if command -v podman &>/dev/null; then
  podman run -it -t dealii_container
elif command -v docker &>/dev/null; then
  docker run -it -t dealii_container
else
  cecho ${ERROR} "Error: Neither 'podman' nor 'docker' is available on this system."
  cecho ${INFO} "Please install one of these tools to proceed:"
  cecho ${INFO} "- Debian/Ubuntu: sudo apt install podman  # or docker"
  cecho ${INFO} "- Red Hat/Fedora: sudo dnf install podman  # or docker"
fi
