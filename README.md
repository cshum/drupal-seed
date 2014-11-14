#Drupal Seed

A Drupal 7 seed package that aims to automate setup tasks, preconfigured with a number of contrib modules for an efficient setup Drupal 7 project.

### Preparation
Pre-requisites: PHP 5 FPM, MySQL, Nginx, Drush installed.

    $ mysql_secure_installation
    
    $ sudo apt-get install php-apc php-pear php5-cli php5-common php5-curl php5-fpm php5-gd php5-mysql nginx
    $ sudo apt-get install drush

Bundler, NPM, Grunt, Bower for theme assets compilation. Optional if you have assets checked in.

    $ sudo apt-get install git ruby nodejs
    $ sudo apt-get install rubygems-integration
    $ sudo apt-get install npm
    $ sudo apt-get install bundler

    $ sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
    $ sudo chown ubuntu.ubuntu /usr/local/bin/
    $ sudo chown ubuntu.ubuntu /usr/local/lib/

    $ npm -g install bower
    $ npm -g install grunt-cli

### Installation
Site installation:
`install.sh` cleans up current site installation and automate setup process. 
`nginx.sh` generates Nginx config of the site.

    $ cd scripts
    $ ./install.sh <site username> <site password> <db url>
    $ ./nginx.sh <nginx conf path> <port>

Theme assets compilation:

    $ cd sites/all/themes/site_theme/
    $ bundle install --path vendor/bundle
    $ bower install
    $ npm install
    $ grunt build

###Technology Stack

Contrib modules used:

