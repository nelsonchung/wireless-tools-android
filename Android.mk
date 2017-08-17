LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

IWPRIV_ANDROID_BUILD=y
NO_PKG_CONFIG=y
#include $(LOCAL_PATH)/Makefile

#LOCAL_MODULE := libiw
#LOCAL_CFLAGS += -Dwchar_t=int -DWE_NOLIBM=y 
#LOCAL_SRC_FILES := iwlib.c
LOCAL_MULTILIB := 32
LOCAL_C_INCLUDES := \
      $(LOCAL_PATH) \
      bionic/libc/include/ \
      bionic/libc/kernel/common/linux/ \
#LOCAL_SHARED_LIBRARIES := libc libcutils
#LOCAL_PRELINK_MODULE := false
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwconfig
#LOCAL_SRC_FILES := iwconfig.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwlist
#LOCAL_SRC_FILES := iwlist.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
LOCAL_MODULE := iwpriv
LOCAL_SRC_FILES := iwpriv.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE_TAGS := eng debug
include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwapriv
#LOCAL_SRC_FILES := iwapriv.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwspy
#LOCAL_SRC_FILES := iwspy.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwgetid
#LOCAL_SRC_FILES := iwgetid.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := iwevent
#LOCAL_SRC_FILES := iwevent.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := ifrename
#LOCAL_CFLAGS += 
#LOCAL_SRC_FILES := ifrename.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#include $(BUILD_EXECUTABLE)

#include $(CLEAR_VARS)
#LOCAL_MODULE := macaddr
#LOCAL_SRC_FILES := macaddr.c
#LOCAL_SHARED_LIBRARIES := libc libiw
#include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_EXECUTABLE)
