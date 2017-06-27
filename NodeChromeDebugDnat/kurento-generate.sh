#!/bin/bash -x

echo "##################### EXECUTE: kurento-generate.sh #####################"

VERSION=$1
NAMESPACE=$2
AUTHORS=$3

cd ../NodeDebug && ./generate.sh NodeChromeDebugDnat node-chrome-debug Chrome $1 $2 $3

cd ../NodeChromeDebugDnat
cp entry_point.sh entry_point_selenium.sh


cat > entry_point.sh <<-EOF
#!/bin/bash
entry_point_dnat.sh && entry_point_selenium.sh
EOF

