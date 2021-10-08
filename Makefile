include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-go-aliyundrive-webdav
PKG_VERSION:=1.0.1
PKG_RELEASE:=20211005

PKG_MAINTAINER:=jerrykuku <jerrykuku@qq.com>

LUCI_TITLE:=Luci for go-aliyundrive-webdav
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+lua +libuci-lua +go-aliyundrive-webdav 

define Package/$(PKG_NAME)/conffiles
/etc/config/go-aliyundrive-webdav
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature