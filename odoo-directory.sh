#!/bin/bash

# Check if base path argument is given
if [ -z "$1" ]; then
  echo "Usage: $0 <base-path>"
  exit 1
fi

# Set base path from argument
BASE="$1"

# Create directories
mkdir -p "$BASE/addons/custom"
mkdir -p "$BASE/addons/odoo/addons"
mkdir -p "$BASE/config/log"
mkdir -p "$BASE/config/odoo"
mkdir -p "$BASE/config/requirements"

# Create empty files
touch "$BASE/config/log/odoo-server.log"
touch "$BASE/config/odoo/odoo.conf"
touch "$BASE/config/requirements/file.txt"
touch "$BASE/docker-compose.yml"

echo "Directory structure under $BASE created successfully."
