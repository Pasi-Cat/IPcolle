## IPcolle
使用Github Action 自动构建我个人所需的ip分流表

用于Firewall - mangle页，通过dst-addrss= 引用


## AS4809.rsc
大陆白名单v4和v6路由规则

ipv4段信息取自 [china-ip-list](https://github.com/mayaxcn/china-ip-list)
ipv6段信息取自 [China-IPv6-List](https://github.com/ChanthMiao/China-IPv6-List)

策略路由分流的实现方法：

**AS4809.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="AS4809.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/AS4809.rsc"
:if ([:len [/file find name=AS4809.rsc]] > 0) do={
/ip firewall address-list remove [find list="AS4809"]
/ipv6 firewall address-list remove [find list="AS4809"]
/import AS4809.rsc
}
```

## AS4809v4.rsc
大陆白名单v4路由规则

ip段信息取自 [china-ip-list](https://github.com/mayaxcn/china-ip-list)

策略路由分流的实现方法：

**AS4809v4.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="AS4809v4.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/AS4809v4.rsc"
:if ([:len [/file find name=AS4809v4.rsc]] > 0) do={
/ip firewall address-list remove [find list="AS4809v4"]
/import AS4809v4.rsc
}
```

## AS4809v6.rsc
大陆白名单v4路由规则

ip段信息取自 [China-IPv6-List](https://github.com/ChanthMiao/China-IPv6-List)

策略路由分流的实现方法：

**AS4809v6.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="AS4809v6.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/AS4809v6.rsc"
:if ([:len [/file find name=AS4809v6.rsc]] > 0) do={
/ipv6 firewall address-list remove [find list="AS4809v6"]
/import AS4809v6.rsc
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

## bitcoin_nodes.rsc
全球比特币节点

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**bitcoin_nodes.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="bitcoin_nodes.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/bitcoin_nodes.rsc"
:if ([:len [/file find name=bitcoin_nodes.rsc]] > 0) do={
/ip firewall address-list remove [find list="bitcoin_nodes"]
/import bitcoin_nodes.rsc
}
```

## blocklist.rsc
blocklist是一个主要使用fail2ban报告滥用的用户网络。只包括过去48小时内攻击用户的单个IP（无子网），其列表包含20,000至40,000个IP

ip段信息取自 [blocklist-ipsets](https://github.com/firehol/blocklist-ipsets/)

策略路由分流的实现方法：

**blocklist.rsc** 是往Firewall - address lists 里生ip段列表。
```
/file remove [find name="blocklist.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/Pasi-Cat/IPcolle@master/blocklist.rsc"
:if ([:len [/file find name=blocklist.rsc]] > 0) do={
/ip firewall address-list remove [find list="blocklist"]
/import blocklist.rsc
}
```
