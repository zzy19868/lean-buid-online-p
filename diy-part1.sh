#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
git checkout 4a7dd142ff31c121772d3c174045488b69d6a27e
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '$a src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i 's/KERNEL_PATCHVER:=6.6/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
# sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
