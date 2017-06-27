#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

VERSION=$1
NAMESPACE=$2
AUTHORS=$3

cd ../NodeDebug && ./generate.sh NodeChromeBetaDebug node-chrome-beta Chrome $1 $2 $3

