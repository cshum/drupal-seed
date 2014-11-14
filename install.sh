#!/bin/sh

if [ "$#" -ne 3 ]; then
  echo "Usage: $0  <site username> <site password> <db url>"
  echo "Example: $0 admin a12345 mysql://root:a12345@localhost/site"
  echo "         $0 admin a12345 sqlite://site.db"
else
  # clean up
  sudo rm -rf sites/default
  git checkout sites/default

  # https://www.drupal.org/node/619542#comment-9125457
  find . -type f -name "libffi.info" | xargs rm

  # install
  drush site-install standard --account-name=$1 --account-pass=$2 --db-url=$3 -y
  drush en site_common -y
fi
