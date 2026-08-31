#!/usr/bin/env bash
set -e

echo "=== Starting Spoolman Home Assistant Add-on ==="

DATA_DIR="/config/spoolman"
mkdir -p "$DATA_DIR"
chmod -R 777 "$DATA_DIR"

mkdir -p /root/.local/share
rm -rf /root/.local/share/spoolman
ln -sf "$DATA_DIR" /root/.local/share/spoolman

export SPOOLMAN_DIR_DATA="$DATA_DIR"
export SPOOLMAN_DB_URL="sqlite:///$DATA_DIR/spoolman.db"

echo "Data directory mapped to $DATA_DIR"

exec uvicorn spoolman.main:app --host 0.0.0.0 --port 8000
