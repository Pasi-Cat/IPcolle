#!/bin/sh
mkdir -p ./pbr
cd ./pbr

# AS4809v4 BGP
wget --no-check-certificate -c -O AS4809v4.txt https://raw.githubusercontent.com/mayaxcn/china-ip-list/master/chnroute.txt

{
echo "/ip firewall address-list"

for net in $(cat AS4809v4.txt) ; do
  echo "add list=AS4809v4 address=$net"
done

} > ../AS4809v4.rsc

# AS4809v6 BGP
wget --no-check-certificate -c -O AS4809v6.txt https://raw.githubusercontent.com/ChanthMiao/China-IPv6-List/release/cn6.txt

{
echo "/ipv6 firewall address-list"

for net in $(cat AS4809v6.txt) ; do
  echo "add list=AS4809v6 address=$net"
done

} > ../AS4809v6.rsc

# AS4809 BGP V4+V6
{
echo "/ip firewall address-list"

for netv4 in $(cat AS4809v4.txt) ; do
  echo "add list=AS4809 address=$netv4"
done

echo "/ipv6 firewall address-list"

for netv6 in $(cat AS4809v6.txt) ; do
  echo "add list=AS4809 address=$netv6"
done

} > ../AS4809.rsc

# bitcoin_nodes_7d.ipset
wget --no-check-certificate -c -O bitcoin_blockchain.ipset https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/bitcoin_nodes_7d.ipset
grep -v '^#' bitcoin_nodes_7d.ipset | grep -v '^$' > bitcoin_nodes_7d.txt

{
echo "/ip firewall address-list"

for net in $(cat bitcoin_nodes_7d.txt) ; do
  echo "add list=bitcoin_nodes address=$net"
done

} > ../bitcoin_blockchain.rsc

# coinbl_ips
wget --no-check-certificate -c -O coinbl_ips.ipset https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/bitcoin_nodes_7d.ipset
grep -v '^#' coinbl_ips.ipset | grep -v '^$' > coinbl_ips.txt

{
echo "/ip firewall address-list"

for net in $(cat coinbl_ips.txt) ; do
  echo "add list=coinbl_ips address=$net"
done

} > ../coinbl_ips.rsc

# blocklist
wget --no-check-certificate -c -O coinbl_hosts_browser.ipset https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/blocklist_de.ipset
grep -v '^#' blocklist_de.ipset | grep -v '^$' > blocklist_de.txt

{
echo "/ip firewall address-list"

for net in $(cat blocklist_de.txt) ; do
  echo "add list=blocklist_de address=$net"
done

} > ../coinbl_hosts_browser.rsc

# maxmind_proxy_fraud
wget --no-check-certificate -c -O maxmind_proxy_fraud.ipset https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/socks_proxy_7d.ipset
grep -v '^#' maxmind_proxy_fraud.ipset | grep -v '^$' > maxmind_proxy_fraud.txt

{
echo "/ip firewall address-list"

for net in $(cat maxmind_proxy_fraud.txt) ; do
  echo "add list=maxmind_proxy_fraud address=$net"
done

} > ../maxmind_proxy_fraud.rsc

# firehol_level1
wget --no-check-certificate -c -O firehol_level1.netset https://raw.githubusercontent.com/firehol/blocklist-ipsets/master/firehol_level1.netset
grep -v '^#' firehol_level1.netset | grep -v '^$' > firehol_level1.txt

{
echo "/ip firewall address-list"

for net in $(cat firehol_level1.txt) ; do
  echo "add list=firehol_level1 address=$net"
done

} > ../firehol_level1.rsc

cd ..
rm -rf ./pbr
