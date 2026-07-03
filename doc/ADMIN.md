Mailpit listens on two internal ports:

- web interface/API on 127.0.0.1:__PORT__ (proxied by Nginx to https://__DOMAIN____PATH__),
- SMTP on __PORT_SMTP__ (publicly reachable, intended for mail testing).

Data is stored in:

- __DATA_DIR__/mailpit.db

Common post-install usage:

1. Configure your apps/services to send SMTP emails to your YunoHost server on port __PORT_SMTP__.
2. Open the Mailpit UI at https://__DOMAIN____PATH__ to inspect captured messages.
