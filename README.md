# Mailpit for YunoHost

![Mailpit icon](./logo.svg)

[![Install Mailpit with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mailpit)

*[Lire ce README en francais.](./README_fr.md)*

> This package allows you to install Mailpit quickly on a YunoHost server.

## Overview

Mailpit is a modern email testing tool.
It provides an SMTP server to capture outgoing emails and a web UI to inspect messages, headers and attachments.

### Features

- Web UI to browse and inspect captured emails
- SMTP endpoint for application testing
- Persistent local database for captured messages
- Reverse-proxied web access through YunoHost (domain/path)

**Packaged version:** 1.30.3~ynh1

## Screenshots

![Screenshot of Mailpit](./doc/screenshots/mailpit.png)

## Important information

- Mailpit is intended for development/testing, not production mailbox hosting.
- The web UI is exposed through Nginx on your configured domain/path.
- SMTP capture is exposed on a dedicated TCP port selected during install (default: 1025).

## Documentation and resources

- Official website: <https://mailpit.axllent.org>
- Official documentation: <https://mailpit.axllent.org/docs/>
- Upstream code repository: <https://github.com/axllent/mailpit>
- Package repository: <https://github.com/patou/mailpit_ynh>
- Report a bug: <https://github.com/patou/mailpit_ynh/issues>

## Developer info

Install from current branch:

```bash
sudo yunohost app install https://github.com/patou/mailpit_ynh --debug
```

Upgrade from current branch:

```bash
sudo yunohost app upgrade mailpit -u https://github.com/patou/mailpit_ynh --debug
```
