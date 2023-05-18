#!/bin/sh
mkdir -p ./pbr
cd ./pbr

# AS4809 BGP
wget --no-check-certificate -c -O AS4809.txt https://raw.githubusercontent.com/mayaxcn/china-ip-list/master/chnroute.txt

{
echo "/ip firewall address-list"

for net in $(cat AS4809.txt) ; do
  echo "add list=AS4809 address=$net"
done

} > ../AS4809.rsc

cd ..
rm -rf ./pbr
