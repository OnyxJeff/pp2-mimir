# Mimir

![Build](https://github.com/OnyxJeff/Mimir/actions/workflows/build.yml/badge.svg)
![Maintained](https://img.shields.io/badge/maintained-yes-blue)

**Mimir** is the central observability hub of my homelab, built on a Raspberry Pi 4.

### 🧰 Services
- **Grafana (with Speedtest)**: Monitors WAN uptime and internet speed.
- **Uptime Kuma**: Tracks service uptime across my entire fleet.
- **UniFi Controller**: Manages UniFi network devices and topology.

---

## 📦 Docker Compose

### WAN Monitoring

```bash
cd docker/internet-monitoring
docker-compose up -d
```

### Uptime Kuma

```bash
cd docker/uptime-kuma
docker-compose up -d
```

### UniFi Controller

```bash
cd docker/unifi-controller
docker-compose up -d
```

## 💾 Backup
```bash
bash backups/backup.sh
```
Backs up Grafana config, Uptime Kuma database, and UniFi controller data.

---

📬 Maintained By
Jeff M. • [@OnyxJeff](https://www.github.com/onyxjeff)