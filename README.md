# Mimir

![Build](https://github.com/OnyxJeff/Mimir/actions/workflows/build.yml/badge.svg)
![Maintained](https://img.shields.io/badge/maintained-yes-blue)

**Mimir** is the central observability hub of my homelab, built on a Raspberry Pi 4.

## 📁 Repo Structure

```text
mimir/
├── .github/workflows/    # CI for YAML validation
├── backups/              # Exported or example snapshot files
├── docker/               # YAML-based -darr stack applications
└── README.md             # You're reading it!
```

---

### 🧰 Services
- **Grafana (with Speedtest)**: Monitors WAN uptime and internet speed.
- **Uptime Kuma**: Tracks service uptime across my entire fleet.
- **UniFi Controller**: Manages UniFi network devices and topology.
- **NGINX Static Webpage**: Displays network info and links to commonly used sites.

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

### NGINX Static Webpage Dashboard
```bash
cd docker/nginx
docker-compose up -d
```

## 💾 Backup
```bash
bash backups/backup.sh
```
Backs up Grafana config, Uptime Kuma database, UniFi controller data, and NGINX code.

---

📬 Maintained By
Jeff M. • [@OnyxJeff](https://www.github.com/onyxjeff)