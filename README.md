#Drupal Seed

Drupal is a powerful tool in many ways, but deployment is mostly troublesome. Drupal Seed aims to automate install and deploy tasks in a continuous manner. It is also preconfigured with a number of contrib modules for building a Drupal project efficiently.

### Installation
Pre-requisites: PHP 5 FPM, MySQL, Nginx, Drush installed.

    $ sudo apt-get install mysql-server
    $ sudo mysql_install_db
    $ mysql_secure_installation
    
    $ sudo apt-get install php-apc php-pear php5-cli php5-common php5-curl php5-fpm php5-gd php5-mysql nginx
    $ sudo apt-get install drush

    $ ./install.sh <site username> <site password> <db url>
    $ ./nginx.sh <nginx conf path> <port>
    $ sudo service nginx reload


`install.sh` cleans up current site installation and automate setup process.

`nginx.sh` generates a Nginx config of the site.


### Theme

Prior installation, theme `site_theme` is enabled by default. It is a [Omega 4](https://www.drupal.org/project/omega) subtheme that levarages Sass, Compass, Grunt, Bower, Bundler, etc.

    $ sudo apt-get install git ruby nodejs
    $ sudo apt-get install rubygems-integration
    $ sudo apt-get install npm
    $ sudo apt-get install bundler

    $ sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
    $ sudo chown ubuntu.ubuntu /usr/local/bin/
    $ sudo chown ubuntu.ubuntu /usr/local/lib/

    $ npm -g install bower
    $ npm -g install grunt-cli
    
    $ cd sites/all/themes/site_theme/
    $ bundle install --path vendor/bundle
    $ bower install
    $ npm install

    $ grunt build
    $ grunt watch

### Deployment Module

`site_common` is the module that automate setup and deploy tasks using `hook_update_N()` [deployment workflow](http://dcycleproject.org/blog/44/what-site-deployment-module), including 

* Enabling or disabling modules, default themes
* Views/DB clean up tasks

Variables are maintained with [Feature Strongarm](https://www.drupal.org/project/strongarm) , where `site_common_feature` contains all the feature exportables of Drupal Seed. 

### Notes & Tweaks

* Using `admin_menu` instead of Drupal's default toolbar. Disable core `overlay`, `dashboard`, `comment`
* Updated to jQuery 1.10 for site theme using `jquery_update`
* Using `adminimal` as default admin theme
* `webform` is not included. Use `entityform` for form building. You can apply `views` and `rules` to do many stuffs.
* Empty blocks except content by default.
* `panels` is not included. Use `context` with `blocks` reactions for dynamic layout.
