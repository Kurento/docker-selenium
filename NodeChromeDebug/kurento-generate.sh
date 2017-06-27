#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

cd ../NodeDebug && ./generate.sh NodeChromeDebug node-chrome Chrome $TAG $IMAGE_NAMESPACE $IMAGE_AUTHORS
