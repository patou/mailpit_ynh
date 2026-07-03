Mailpit ecoute sur deux ports internes :

- interface web/API sur 127.0.0.1:__PORT__ (proxy Nginx vers https://__DOMAIN____PATH__),
- SMTP sur __PORT_SMTP__ (accessible publiquement, pour le test d'emails).

Les donnees sont stockees dans :

- __DATA_DIR__/mailpit.db

Usage courant apres installation :

1. Configurez vos applications/services pour envoyer les emails SMTP vers votre serveur YunoHost sur le port __PORT_SMTP__.
2. Ouvrez l'interface Mailpit sur https://__DOMAIN____PATH__ pour inspecter les messages captures.
