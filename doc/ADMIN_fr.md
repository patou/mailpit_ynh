Mailpit ecoute sur deux ports internes :

- interface web/API sur 127.0.0.1:__PORT__ (proxy Nginx vers https://__DOMAIN____PATH__),
- SMTP sur __PORT_SMTP__ (accessible publiquement, pour le test d'emails).

Les donnees sont stockees dans :

- __DATA_DIR__/mailpit.db

Usage courant apres installation :

1. Configurez vos applications/services pour envoyer les emails SMTP vers votre serveur YunoHost sur le port __PORT_SMTP__.
2. Ouvrez l'interface Mailpit sur https://__DOMAIN____PATH__ pour inspecter les messages captures.

Exemple avec WordPress installe sur le meme serveur YunoHost :

1. Dans l'administration WordPress, installez puis activez une extension SMTP, par exemple WP Mail SMTP.
2. Configurez l'extension avec les parametres suivants :
	- hote SMTP : localhost
	- port SMTP : __PORT_SMTP__
	- chiffrement : aucun
	- authentification : desactivee
3. Envoyez un email de test depuis l'extension, puis verifiez sa reception dans l'interface Mailpit sur https://__DOMAIN____PATH__.
