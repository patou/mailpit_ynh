Mailpit listens on two internal ports:

- web interface/API on 127.0.0.1:__PORT__ (proxied by Nginx to https://__DOMAIN____PATH__),
- SMTP on __PORT_SMTP__ (publicly reachable, intended for mail testing).

Data is stored in:

- __DATA_DIR__/mailpit.db

Common post-install usage:

1. Configure your apps/services to send SMTP emails to your YunoHost server on port __PORT_SMTP__.
2. Open the Mailpit UI at https://__DOMAIN____PATH__ to inspect captured messages.

Example with WordPress installed on the same YunoHost server:

1. In the WordPress admin, install and enable an SMTP plugin such as WP Mail SMTP.
2. Configure the plugin with the following values:
	- SMTP host: localhost
	- SMTP port: __PORT_SMTP__
	- encryption: none
	- authentication: disabled
3. Send a test email from the plugin, then confirm it appears in the Mailpit UI at https://__DOMAIN____PATH__.
