#!/bin/sh

if [ "$#" -ne 3 ]; then
  echo "Usage: $0  <mysql db name> <db username> <db password>"
else
  cd ..

  # clean up
  sudo rm -rf sites/default
  git checkout sites/default

  # on9 https://www.drupal.org/node/619542#comment-9125457
  find . -type f -name "libffi.info" | xargs rm

  # install
  drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://$1:$2@localhost/$3 -y
  drush en site_common -y
fi
