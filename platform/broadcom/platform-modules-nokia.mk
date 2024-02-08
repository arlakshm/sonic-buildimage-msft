# Nokia Platform modules

NOKIA_IXR7250_PLATFORM_MODULE_VERSION = 1.0

export NOKIA_IXR7250_PLATFORM_MODULE_VERSION


NOKIA_IXR7250_PLATFORM_MODULE = sonic-platform-nokia-chassis_$(NOKIA_IXR7250_PLATFORM_MODULE_VERSION)_amd64.deb
$(NOKIA_IXR7250_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-nokia
$(NOKIA_IXR7250_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON) $(NOKIA_NDK_DEBIAN)
$(NOKIA_IXR7250_PLATFORM_MODULE)_PLATFORM = x86_64-nokia_ixr7250e_sup-r0
$(NOKIA_IXR7250_PLATFORM_MODULE)_PLATFORM += x86_64-nokia_ixr7250e_36x400g-r0
SONIC_DPKG_DEBS += $(NOKIA_IXR7250_PLATFORM_MODULE)

NDK_VERSION = 22.9.23
NOKIA_NDK_DEBIAN = ndk_$(NDK_VERSION)_amd64.deb
$(NOKIA_NDK_DEBIAN)_URL = "https://github.com/Nokia-ION/ndk-releases/releases/download/v$(NDK_VERSION)/$(NOKIA_NDK_DEBIAN)"
SONIC_ONLINE_DEBS += $(NOKIA_NDK_DEBIAN)
