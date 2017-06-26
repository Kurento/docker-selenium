#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

sed -i 's/node-base/node-chrome-dev/' ./Dockerfile
cat ../NodeChromeDebug/Dockerfile.txt >> ./Dockerfile
cp ../NodeChromeDebug/entry_point.sh .

