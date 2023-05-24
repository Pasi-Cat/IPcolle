## IPcolle
使用Github Action 自动构建我个人所需的ip分流表

用于Firewall - mangle页，通过dst-addrss= 引用

## AS4809.rsc
大陆白名单路由规则

ip段信息取自 [china-ip-list](https://github.com/mayaxcn/china-ip-list)

策略路由分流的实现方法：

**AS4809.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="AS4809.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/AS4809.rsc"
:if ([:len [/file find name=AS4809.rsc]] > 0) do={
/ip firewall address-list remove [find list="AS4809"]
/import AS4809.rsc
}
```

## bitcoin_blockchain.rsc
比特币区块链IP列表

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**bitcoin_blockchain.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="bitcoin_blockchain.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/bitcoin_blockchain.rsc"
:if ([:len [/file find name=bitcoin_blockchain.rsc]] > 0) do={
/ip firewall address-list remove [find list="bitcoin_blockchain"]
/import bitcoin_blockchain.rsc
}
```

## coinbl_ips.rsc
常见挖矿程序IP列表

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**coinbl_ips.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="coinbl_ips.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/coinbl_ips.rsc"
:if ([:len [/file find name=coinbl_ips.rsc]] > 0) do={
/ip firewall address-list remove [find list="coinbl_ips"]
/import coinbl_ips.rsc
}
```

## coinbl_hosts_browser.rsc
常见浏览器挖矿程序列表，已解析成IP地址

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**coinbl_hosts_browser.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="coinbl_hosts_browser.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/coinbl_hosts_browser.rsc"
:if ([:len [/file find name=coinbl_hosts_browser.rsc]] > 0) do={
/ip firewall address-list remove [find list="coinbl_hosts_browser"]
/import coinbl_hosts_browser.rsc
}
```


## maxmind_proxy_fraud.rsc
高危IP列表

原始IP来源至 [MaxMind](https://www.maxmind.com/en/high-risk-ip-sample-list)

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**maxmind_proxy_fraud.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="maxmind_proxy_fraud.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/maxmind_proxy_fraud.rsc"
:if ([:len [/file find name=maxmind_proxy_fraud.rsc]] > 0) do={
/ip firewall address-list remove [find list="maxmind_proxy_fraud"]
/import maxmind_proxy_fraud.rsc
}
```

## firehol_level1.rsc
firehol level1级别危险IP表

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**firehol_level1.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="firehol_level1.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/firehol_level1.rsc"
:if ([:len [/file find name=firehol_level1.rsc]] > 0) do={
/ip firewall address-list remove [find list="firehol_level1"]
/import firehol_level1.rsc
}
```
