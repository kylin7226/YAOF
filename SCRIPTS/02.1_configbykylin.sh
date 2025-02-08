#!/bin/bash

#额外的个性包准备
#ddns-go
mkdir -p ./package/new
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/new/ddns-go
git clone  https://github.com/Turing-China/luci-app-ap-modem.git package/new/luci-app-ap-modem

echo "修改LAN ip"
lan_ip='192.168.199.1'	
sed -i "s/192.168.1.1/$lan_ip/g" package/base-files/files/bin/config_generate
