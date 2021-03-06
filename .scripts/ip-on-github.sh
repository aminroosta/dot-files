#! /bin/bash

set -x

cd ~/
while true; do
    curl -s ifconfig.me > ~/.ip
    git add -f ./.ip
    git commit -q -m "update ip"
    git pull origin master
    git push origin master
    sleep 60
done
