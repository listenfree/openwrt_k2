 #good for you
version="22.03.5"
wget https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
make info
make image PROFILE=phicomm_k2-v22.4 PACKAGES="ncat uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-mod-admin-full luci-theme-bootstrap wpad-openssl -wpad-basic-wolfssl -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
make image PROFILE=lenovo_newifi-y1s PACKAGES="uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap wpad-openssl luci-proto-wireguard  luci-app-wireguard curl -wpad-basic-wolfssl -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
t7_version="23.05.0-rc1"
wget https://downloads.openwrt.org/releases/23.05.0-rc1/targets/mediatek/filogic/openwrt-imagebuilder-23.05.0-rc1-mediatek-filogic.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${t7_version}-mediatek-filogic.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${t7_version}-mediatek-filogic.Linux-x86_64.tar
cd openwrt-imagebuilder-${t7_version}-mediatek-filogic.Linux-x86_64
make image PROFILE=qihoo_360t7
