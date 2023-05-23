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

# bitcoin_blockchain_info_7d
wget --no-check-certificate -c -O bitcoin_blockchain.txt https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/bitcoin_blockchain_info_7d.ipset

{
echo "/ip firewall address-list"

for net in $(cat bitcoin_blockchain.txt) ; do
  echo "add list=bitcoin_blockchain address=$net"
done

} > ../bitcoin_blockchain.rsc

cd ..
rm -rf ./pbr
