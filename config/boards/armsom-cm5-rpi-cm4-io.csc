# Rockchip RK3576 SoC octa core 8-64GB SoC GBe eMMC USB3 NvME WIFI
BOARD_NAME="ArmSoM CM5 CM4 IO"
BOARDFAMILY="rk35xx"
BOOTCONFIG="armsom-cm5-rpi-cm4-io-rk3576_defconfig"
KERNEL_TARGET="vendor"
FULL_DESKTOP="yes"
BOOT_LOGO="desktop"
BOOT_FDT_FILE="rockchip/rk3576-armsom-cm5-rpi-cm4-io.dtb"
BOOT_SCENARIO="spl-blobs"
IMAGE_PARTITION_TABLE="gpt"
BOARD_MAINTAINER=""

function post_family_tweaks__armsom-cm5-rpi-cm4-io_naming_audios() {
	display_alert "$BOARD" "Renaming armsom-cm5-rpi-cm4-io audios" "info"

	mkdir -p $SDCARD/etc/udev/rules.d/
	echo 'SUBSYSTEM=="sound", ENV{ID_PATH}=="platform-hdmi0-sound", ENV{SOUND_DESCRIPTION}="HDMI0 Audio"' > $SDCARD/etc/udev/rules.d/90-naming-audios.rules

	return 0
}
