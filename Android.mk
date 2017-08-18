LOCAL_PATH := $(call my-dir)

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
  
#LOCAL_MODULE_TAGS := eng  
#LOCAL_SHARED_LIBRARIES := libc libcutils
#LOCAL_PRELINK_MODULE := false  
  
#include $(BUILD_SHARED_LIBRARY) 

#==============================================
#include $(CLEAR_VARS)  
LOCAL_MODULE := iwconfig
LOCAL_SRC_FILES := iwconfig.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE_TAGS := eng debug                                                                                                          
include $(BUILD_EXECUTABLE)
#================================================  

#================================================  
#include $(CLEAR_VARS)     
LOCAL_MODULE := iwlist     
LOCAL_SRC_FILES := iwlist.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc 
LOCAL_MODULE_TAGS := eng debug 
include $(BUILD_EXECUTABLE)
#================================================ 

  
#================================================  
#include $(CLEAR_VARS)  
LOCAL_MODULE := iwpriv
LOCAL_SRC_FILES := iwpriv.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc 
LOCAL_MODULE_TAGS := eng debug
include $(BUILD_EXECUTABLE)  
#================================================  
   
   
  
#================================================  
#include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := eng debug
LOCAL_SRC_FILES := iwspy.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE := iwspy  
include $(BUILD_EXECUTABLE)  
#================================================  
  
#================================================  
#include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := eng debug
LOCAL_SRC_FILES := iwgetid.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE := iwgetid  
include $(BUILD_EXECUTABLE)  
#================================================  
  
#================================================  
#include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := eng debug
LOCAL_SRC_FILES := iwevent.c iwlib.c
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE := iwevent  
include $(BUILD_EXECUTABLE)  
#================================================  
  
#endif # !TARGET_SIMULATOR
