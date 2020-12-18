 version="19.07.5"
 wget https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 tar -xvf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
 cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
 make image PROFILE=psg1218a PACKAGES="uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-proto-ppp  luci-mod-admin-full luci-theme-bootstrap wpad -wpad-basic -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
 make image PROFILE=y1s PACKAGES="uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap wpad -wpad-basic -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
