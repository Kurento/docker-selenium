#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

VERSION=$1
NAMESPACE=$2
AUTHORS=$3

cd ../NodeDebug && ./generate.sh NodeFirefoxBetaDebug node-firefox-beta Firefox $1 $2 $3


