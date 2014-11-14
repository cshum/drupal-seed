#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "Usage: $0  <nginx conf path> <port>"
else
  # write config
  sed -e "s;%ROOT%;`pwd`;g" -e "s;%PORT%;$2;g" nginx.conf > $1
fi
