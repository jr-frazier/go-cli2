#!/bin/bash

allThreads=(debian/wheezy debian/jessie debian/stretch debian/buster
             ubuntu/trusty ubuntu/utopic ubuntu/vivid ubuntu/wily ubuntu/xenial ubuntu/yakkety ubuntu/zesty ubuntu/artful ubuntu/bionic ubuntu/disco ubuntu/focal ubuntu/jammy
             raspbian/wheezy raspbian/jessie raspbian/stretch raspbian/buster)

CURRENT_TAG=$(git tag -l "v*" --sort=-version:refname | head -1)

#wget https://github.com/jr-frazier/go-cli2/releases/download/v0.3.10/gocli2_${CURRENT_TAG:1}_linux_amd64.deb
echo $PACKAGECLOUD_TOKEN

for i in ${allThreads[@]}; do
  package_cloud push p1/gocli2/$i
done