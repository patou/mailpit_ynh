# Mailpit pour YunoHost

[![Installer Mailpit avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mailpit)

*[Read this README in english.](./README.md)*

> Ce package permet d'installer rapidement Mailpit sur un serveur YunoHost.

## Vue d'ensemble

Mailpit est un outil moderne de test d'emails.
Il fournit un serveur SMTP pour capturer les emails sortants et une interface web pour inspecter les messages, en-tetes et pieces jointes.

### Fonctionnalites

- Interface web pour parcourir et inspecter les emails captures
- Point d'entree SMTP pour les tests applicatifs
- Base locale persistante pour les messages captures
- Acces web proxifie via YunoHost (domaine/chemin)

**Version packagee :** 1.30.3~ynh1

## Captures d'ecran

![Capture d'ecran de Mailpit](./doc/screenshots/example.jpg)

## Informations importantes

- Mailpit est destine au developpement/test, pas a l'hebergement de boites mail en production.
- L'interface web est exposee via Nginx sur votre domaine/chemin configure.
- La capture SMTP est exposee sur un port TCP dedie choisi a l'installation (par defaut : 1025).

## Documentation et ressources

- Site officiel : <https://mailpit.axllent.org>
- Documentation officielle : <https://mailpit.axllent.org/docs/>
- Depot upstream : <https://github.com/axllent/mailpit>
- Depot du package : <https://github.com/patou/mailpit_ynh>
- Signaler un bug : <https://github.com/patou/mailpit_ynh/issues>

## Informations pour les developpeurs

Installer depuis la branche courante :

```bash
sudo yunohost app install https://github.com/patou/mailpit_ynh --debug
```

Mettre a jour depuis la branche courante :

```bash
sudo yunohost app upgrade mailpit -u https://github.com/patou/mailpit_ynh --debug
```
