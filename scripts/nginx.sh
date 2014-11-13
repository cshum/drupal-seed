#!/bin/sh
cd ..
sed -e "s;%ROOT%;`pwd`;g" scripts/nginx.conf > $1
