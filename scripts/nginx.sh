#!/bin/sh
cd ..
sed -e "s;%ROOT%;`pwd`;g" -e "s;%PORT%;$2;g" scripts/nginx.conf > $1
