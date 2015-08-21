#
# Glacier2 lib
#
include $(CLEAR_RULES)

LOCAL_MODULE                    = Glacier2
LOCAL_PATH                      = cpp/src/$(LOCAL_MODULE)

LOCAL_SLICEDIR                  = ice/slice/$(LOCAL_MODULE)
LOCAL_SLICES                    = $(wildcard $(LOCAL_SLICEDIR)/*.ice)
LOCAL_SLICE2CPPFLAGS            = --ice --dll-export GLACIER2_API

LOCAL_SRCDIR                    = ice/cpp/src/$(LOCAL_MODULE)Lib
LOCAL_SRCS                      = $(wildcard $(LOCAL_SRCDIR)/*.cpp)
LOCAL_CPPFLAGS                  = -Icpp/src/$(LOCAL_MODULE)

LOCAL_PUBLIC_HEADERS            = $(wildcard ice/cpp/include/$(LOCAL_MODULE)/*.h)
LOCAL_PUBLIC_SLICES             = $(LOCAL_SLICES)

include $(STATICLIBRARY_RULES)
include $(INSTALL_RULES)

#
# Glacier2CryptPermissionsVerifier
#
include $(CLEAR_RULES)
LOCAL_MODULE                    = Glacier2CryptPermissionsVerifier
include $(SUBMODULE_RULES)
SUBMODULE_OBJS                  := $(LOCAL_OBJS)

include $(CLEAR_RULES)
LOCAL_MODULE                    = glacier2router
LOCAL_EXE                       = $(LOCAL_MODULE)
LOCAL_PATH                      = cpp/src/Glacier2

LOCAL_SLICEDIR                  = ice/$(LOCAL_PATH)
LOCAL_SLICES                    = $(wildcard $(LOCAL_SRCDIR)/*.ice)

LOCAL_LINK_WITH                 = Glacier2 Ice
LOCAL_SRCDIR                    = ice/$(LOCAL_PATH)
LOCAL_SRCS                      = $(wildcard $(LOCAL_SRCDIR)/*.cpp) \
                                  $(LOCAL_PATH)/RegisterPluginsInit.cpp

LOCAL_CPPFLAGS                  = -I$(LOCAL_PATH)
LOCAL_OBJS                      = $(SUBMODULE_OBJS)
LOCAL_LDFLAGS                   = -Wl,-Bdynamic -lcrypt

#
# Bitbake yocto build sytem already strip its binaries.
#
ifeq ($(ICEE_TARGET_OS),yocto)
    LOCAL_STRIP_DISABLED        = yes
endif

include $(APPLICATION_RULES)

SUBMODULE_OBJS	=
