PRODUCT_PACKAGES := \
	ApiDemos      \
        SoundRecorder \
        GeneralRunner \
        EvilSkull \
        Vase

$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := TI
PRODUCT_NAME := omap3evm
PRODUCT_DEVICE := omap3evm
PRODUCT_PACKAGE_OVERLAYS := device/rowboat/generic
