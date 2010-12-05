PRODUCT_PACKAGES := \
	ApiDemos      \
        SoundRecorder \
        GeneralRunner \
        EvilSkull \
        Vase

$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := WITS
PRODUCT_NAME := a81e
PRODUCT_DEVICE := a81e
PRODUCT_PACKAGE_OVERLAYS := device/rowboat/generic
