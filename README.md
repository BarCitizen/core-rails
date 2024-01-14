# Purpose
Base image used for rails apps at BarCitizen

# Maintainer
PenguinzPlays

# Installed Stuff
* Ruby
* Ruby Installer
* Ruby Gems
    * Bundler
    * Rails
* Nginx Lite
* Nginx Passenger Module (module for Ruby)
* NodeJS
* Yarn
* Security Tools

# Configuration Options

## BUILD ARGS and defaults
APP_TITLE="CORE-RAILS"
SECRET_KEY_BASE="defaultsecret"
RUBY_VERSION="3.2.2"
RUBY_INSTALLER_VERSION="0.9.3"
RAILS_ENV="production" 
RAILS_VERSION="7.0.4"
NODE_VERSION="20"
NODE_KEYURL="https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key"
