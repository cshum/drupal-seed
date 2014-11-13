#Drupal Seed

A Drupal 7 seed package that aims to automate setup tasks, sidestep unnecessary modules and config, comes with a number of contrib modules pre-installed for efficient setup a Drupal 7 project.

### Preparation
    $ sudo apt-get install git
    $ sudo apt-get install ruby
    $ sudo apt-get install npm
    $ sudo apt-get install nodejs
    $ sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

    $ sudo chown ubuntu.ubuntu /usr/local/bin/
    $ sudo chown ubuntu.ubuntu /usr/local/lib/

    $ npm -g install bower
    $ npm -g install grunt-cli

### Installation
#### Site
    $ cd scripts
    $ ./install.sh <mysql db name> <db username> <db password>
    $ ./nginx.sh <nginx conf path> <port>

#### Theme
    $ cd sites/all/themes/site_theme/
    $ bundle install --path vendor/bundle
    $ bower install
    $ npm install
    $ grunt build
