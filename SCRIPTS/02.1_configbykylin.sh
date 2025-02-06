#!/bin/bash

#额外的个性包准备
#ddns-go
mkdir -p ./package/new/ddns-go
cp -rf ../zxlhhyccc/zxlhhyccc/ddns-go/luci-app-ddns-go ./package/new/ddns-go/
cp -rf ../zxlhhyccc/zxlhhyccc/ddns-go/ddns-go ./package/new/ddns-go/


echo "修改LAN ip"
lan_ip='192.168.199.1'	
sed -i "s/192.168.1.1/$lan_ip/g" package/base-files/files/bin/config_generate
