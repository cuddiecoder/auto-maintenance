# Linux Backup and System Health Automation Suite

## Overview
Professional Bash automation toolkit for:
- Backups
- Backup rotation
- System monitoring
- Reporting
- Restore operations

## Features
- Compressed backups
- Auto cleanup
- Resource monitoring
- Log generation
- Restore support
- Cron automation

---

## Installation

```bash
git clone https://github.com/cuddiecoder/auto-maintenance.git
cd automaintenance
chmod +x *.sh
./setup.sh
```

---

## Usage

Create backup:

```bash
./backup.sh
```

Monitor system:

```bash
./monitor.sh
```

Cleanup old backups:

```bash
./cleanup.sh
```

Restore backup:

```bash
./restore.sh
```

---

## Cron Automation

Daily backup 2AM:

```bash
0 2 * * * /path/to/backup.sh
```

Weekly cleanup:

```bash
0 3 * * 0 /path/to/cleanup.sh
```

---

## Example Tech Used
- Bash
- Cron
- Tar
- Linux system utilities

## Author
Cuddiecoder
