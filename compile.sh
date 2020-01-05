 wget https://downloads.openwrt.org/releases/18.06.5/targets/ramips/mt7620/openwrt-imagebuilder-18.06.5-ramips-mt7620.Linux-x86_64.tar.xz
 xz -d openwrt-imagebuilder-18.06.5-ramips-mt7620.Linux-x86_64.tar.xz
 tar -xvf openwrt-imagebuilder-18.06.5-ramips-mt7620.Linux-x86_64.tar
 cd openwrt-imagebuilder-18.06.5-ramips-mt7620.Linux-x86_64
 make image PROFILE=psg1218a PACKAGES="uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-mod-admin-full luci-theme-bootstrap wpad -wpad-mini -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
