#!/bin/bash
VERSION=$1
NAMESPACE=$2
AUTHORS=$3

echo FROM kurento/node-chrome-dev:$VERSION > ./Dockerfile
cat ../NodeChromeDebug/Dockerfile.txt >> ./Dockerfile
cp ../NodeChromeDebug/entry_point.sh .
