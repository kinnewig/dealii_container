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
  podman build -t dealii_container -f dockerfiles/dealii_container
  build_exit=$?
elif command -v docker &>/dev/null; then
  docker build -t dealii_container -f dockerfiles/dealii_container
  build_exit=$?
else
  cecho ${ERROR} "Error: Neither 'podman' nor 'docker' is available on this system."
  cecho ${INFO} "Please install one of these tools to proceed:"
  cecho ${INFO} "- Debian/Ubuntu: sudo apt install podman  # or docker"
  cecho ${INFO} "- Red Hat/Fedora: sudo dnf install podman  # or docker"
  build_exit=1
fi

if [[ $? -eq 0 ]]; then
 echo 
 cecho ${GOOD} "Container build succeeded."
 echo 
else
 echo 
 cecho ${ERROR} "Error: Container build failed with exit code ${build_exit}."
 exit 1
fi
