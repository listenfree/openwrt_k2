 #good for you
version="23.05.5"
current_path = $(pwd)
wget https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
make info
make image PROFILE=phicomm_k2-v22.4 PACKAGES="luci uhttpd wpad-mesh-mbedtls -wpad-basic-mbedtls -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
make image PROFILE=lenovo_newifi-y1s PACKAGES="uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-app-firewall luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap wpad-openssl luci-proto-wireguard  luci-app-wireguard curl -wpad-basic-mbedtls -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
