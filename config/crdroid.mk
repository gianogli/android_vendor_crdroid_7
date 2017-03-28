# Product version should match Android version
PRODUCT_VERSION_MAJOR = 7
PRODUCT_VERSION_MINOR = 1.1

# Increase CR Version with each major release.
CR_VERSION := 2.5

LINEAGE_VERSION := crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(CM_BUILD)-v$(CR_VERSION)
LINEAGE_DISPLAY_VERSION := crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-v$(CR_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LINEAGE_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_VERSION) \
    ro.storage_manager.enabled=1 \
    ro.substratum.verified=true \
    ro.opa.eligible_device=true

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Custom packages
PRODUCT_PACKAGES += \
    OmniSwitch \
    org.dirtyunicorns.utils \
    ThemeInterfacer \
    OmniStyle \
    OmniJaws \
    crDroidWallpapers \
    crDroidFileManager

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils
