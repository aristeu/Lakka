PKG_NAME="Xarcade2Jstick-aris"
PKG_VERSION="1.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/aristeu/Xarcade2Jstick"
PKG_URL="http://jake.ruivo.org/~aris/Xarcade2Jstick-aris-1.0.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Xarcade2Jstick-aris: maps a Xarcade Tankstick into gamepads"
PKG_LONGDESC="This application will map Xarcade's Tankstick into virtual gamepads and a keyboard. It also supports combos (Side + Start = coin, Side + Side = escape)"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="CROSS_COMPILE=$TARGET_PREFIX"

post_makeinstall_target() {
	mkdir -p $INSTALL/usr/lib/udev/rules.d/;
	mv $INSTALL/lib/udev/rules.d/* $INSTALL/usr/lib/udev/rules.d/;
}

