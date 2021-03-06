#
# IceXML lib
#

ifneq ($(CPP11),yes)

include $(CLEAR_RULES)

LOCAL_MODULE                    = IceXML
LOCAL_PATH                      = cpp/src/$(LOCAL_MODULE)

LOCAL_SRCDIR                    = ice/cpp/src/$(LOCAL_MODULE)
LOCAL_SRCS                      = $(wildcard $(LOCAL_SRCDIR)/*.cpp)

LOCAL_HEADERPATH                = cpp/include/$(LOCAL_MODULE)
LOCAL_DEPENDENT_DYMODULES       = IceUtil

LOCAL_LINKWITH                  = -Wl,-Bdynamic -lexpat
include $(DYNAMICLIBRARY_RULES)

$(LOCAL_MODULE): $(LOCAL_MODULE)_dynamiclib

endif
