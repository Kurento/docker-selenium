#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

sed -i 's/node-base/node-chrome-beta/' ./Dockerfile
cat ../NodeChromeDebug/Dockerfile.txt >> ./Dockerfile
cp ../NodeChrome/chrome_launcher.sh .
cp ../NodeChrome/generate_config .
cp ../NodeChromeDebug/entry_point.sh .
