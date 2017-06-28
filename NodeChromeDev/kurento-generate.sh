#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

cat ../NodeChrome/Dockerfile.txt >> ./Dockerfile
sed -i 's/CHROME_DRIVER_VERSION=2.29/CHROME_DRIVER_VERSION=2.30/' ./Dockerfile
sed -i 's/google-chrome-stable/google-chrome-unstable/' ./Dockerfile
sed -i 's|COPY chrome_launcher.sh /opt/google/chrome/google-chrome|COPY chrome_launcher.sh /opt/google/chrome-unstable/google-chrome|' ./Dockerfile
sed -i 's|RUN chmod +x /opt/google/chrome/google-chrome|RUN chmod +x /opt/google/chrome-unstable/google-chrome|' ./Dockerfile
cp ../NodeChrome/generate_config .
sed -i 's|/opt/google/chrome|/opt/google/chrome-unstable|' ./generate_config
cp ../NodeChrome/chrome_launcher.sh .
sed -i 's|export CHROME_VERSION_EXTRA="stable"|export CHROME_VERSION_EXTRA="unstable"|' ./chrome_launcher.sh

