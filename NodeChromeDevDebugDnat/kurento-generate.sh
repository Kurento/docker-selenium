#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

VERSION=$1
NAMESPACE=$2
AUTHORS=$3

cd ../NodeDebug && ./generate.sh NodeChromeDevDebugDnat node-chrome-dev-debug Chrome $1 $2 $3

cd ../NodeChromeDevDebugDnat
cp entry_point.sh entry_point_selenium.sh

cat > entry_point.sh <<-EOF
#!/bin/bash
cd /opt/bin/
./entry_point_dnat.sh
EOF

sed -i 's/COPY entry_point.sh \/opt\/bin\/entry_point.sh/COPY entry_point.sh entry_point_selenium.sh entry_point_dnat.sh \/opt\/bin\//' Dockerfile
