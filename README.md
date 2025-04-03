# Mini Application Ruby

## Description
Ce projet est une mini-application Ruby permettant de lancer une console interactive afin d'appeler des services spécifiques. Il est conçu pour être modulaire et extensible.

## Structure du Projet
```
notion_dashboard/
│── bin/
│   ├── console        # Console interactive pour exécuter les services
│   ├── code_check     # Script pour lancer les linters (reek, rubocop)
│── config/
│   ├── reek.yml      # Configuration pour Reek
│── lib/
│   ├── ma_lib.rb     # Exemple de lib
│── services/
│   ├── mon_service.rb # Exemple de service
│── app.rb             # Fichier principal de l'application
│── Gemfile            # Dépendances Ruby
│── README.md          # Documentation
├── .rubocop.yml   # Configuration pour RuboCop
```

## Installation
### Prérequis
- Ruby installé (>= 2.7)
- Bundler installé (`gem install bundler` si nécessaire)

### Installation des dépendances
Dans le répertoire du projet, exécutez :
```sh
bundle install
```

## Utilisation
### Lancer la console interactive
```sh
bin/console
```
Une fois dans la console, vous pouvez exécuter un service :
```ruby
MonService.call("Hello")
```

### Exécuter un service en ligne de commande CLI
Si un service doit être exécuté directement depuis le terminal :
```sh
bin/cli
```

### Vérifier le code avec les linters
Vous pouvez exécuter les linters avec :
```sh
bin/code_check
```

## Licence
Ce projet est sous licence MIT.

