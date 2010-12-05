# OMAP3EVM configuration

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_PROVIDES_INIT_RC := true
TARGET_NO_RADIOIMAGE := true
USE_CAMERA_STUB := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

BUILD_PV_VIDEO_ENCODERS := 1

BOARD_USES_OMAP3_LIGHTS := true

# Setup some runtime system properties.
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := omap3evm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_ARCH_VARIANT := armv7-a-neon

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE           := wl1271
BOARD_SOFTAP_DEVICE         := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

HARDWARE_OMX := true

ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif
