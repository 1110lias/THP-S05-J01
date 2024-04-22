# The Gossip Project

Bienvenue dans **The Gossip Project** ! Ce projet est une petite application web construite avec Sinatra, qui permet de créer, afficher et sauvegarder des potins dans un fichier CSV pour les réafficher sur une page HTML.

## Fonctionnalités

- Création de nouveaux potins avec un auteur et un contenu.
- Affichage de la liste des potins existants.
- Sauvegarde des potins dans un fichier CSV pour une utilisation future.


## INFOS EN PLUS:

# Méthode locals
# La méthode locals est utilisée dans Sinatra pour passer des variables locales à vos vues (fichiers ERB).
# Elle permet de fournir des données dynamiques à vos templates ERB afin qu'elles puissent être rendues avec des valeurs spécifiques.

# Syntaxe :
# erb :template_name, locals: { variable_name: value }

# Autres Méthodes Sinatra Employées
# - get '/route' do ... end: Cette méthode définit une route pour une requête HTTP GET à l'URL spécifiée.
#   Elle exécute le bloc associé lorsqu'une requête GET est reçue à cette URL.

# - post '/route' do ... end: Cette méthode définit une route pour une requête HTTP POST à l'URL spécifiée.
#   Elle exécute le bloc associé lorsqu'une requête POST est reçue à cette URL.

# - redirect '/path': Cette méthode redirige l'utilisateur vers une autre URL.
#   Elle est souvent utilisée pour rediriger l'utilisateur après une opération réussie, comme l'envoi d'un formulaire.

# - erb :template_name: Cette méthode rend un template ERB avec les variables locales fournies.
#   Elle est utilisée pour afficher une page HTML dynamique basée sur des données fournies par l'application.

# - erb :template_name, locals: { variable_name: value }: Cette méthode est une variante de la précédente qui permet de passer des variables locales spécifiques à un template ERB.
