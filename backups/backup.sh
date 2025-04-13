#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="./backups/archive_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

echo "[+] Backing up Grafana config..."
docker cp internet-monitoring_grafana_1:/var/lib/grafana "$BACKUP_DIR/grafana"

echo "[+] Backing up Uptime Kuma database..."
docker cp uptime-kuma:/app/data "$BACKUP_DIR/uptime-kuma"

echo "[+] Backing up UniFi controller data..."
docker cp unifi-controller:/unifi "$BACKUP_DIR/unifi-controller"

echo "[+] Backing up NGINX config..."
docker cp nginx:/code "$BACKUP_DIR/nginx"

echo "[+] Backup complete: $BACKUP_DIR"