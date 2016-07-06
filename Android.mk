LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := v4l2test

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT)/bin

LOCAL_SRC_FILES := \
    v4l2test.cpp \
    camdev.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libui \
    libgui \
    libandroid_runtime

#++ for ffmpeg library
LOCAL_CFLAGS += \
    -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/ffmpeg/include

LOCAL_LDFLAGS += -ldl \
    $(LOCAL_PATH)/ffmpeg/lib/libavformat.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavcodec.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswresample.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswscale.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavutil.a \
    $(LOCAL_PATH)/ffmpeg/lib/libx264.a
#-- for ffmpeg library

LOCAL_MULTILIB := 32

include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)

LOCAL_MODULE := encodertest

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT)/bin

LOCAL_SRC_FILES := \
    ffencoder.cpp \
    encodertest.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils

#++ for ffmpeg library
LOCAL_CFLAGS += \
    -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/ffmpeg/include

LOCAL_LDFLAGS += -ldl \
    $(LOCAL_PATH)/ffmpeg/lib/libavformat.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavcodec.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswresample.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswscale.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavutil.a \
    $(LOCAL_PATH)/ffmpeg/lib/libx264.a
#-- for ffmpeg library

LOCAL_MULTILIB := 32

include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)

LOCAL_MODULE := recordertest

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT)/bin

LOCAL_C_INCLUDES := external/tinyalsa/include

LOCAL_SRC_FILES := \
    micdev_tinyalsa.cpp \
    camdev.cpp \
    ffencoder.cpp \
    ffrecorder.cpp \
    recordertest.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libui \
    libgui \
    libandroid_runtime \
    libtinyalsa

#++ for ffmpeg library
LOCAL_CFLAGS += \
    -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/ffmpeg/include

LOCAL_LDFLAGS += -ldl \
    $(LOCAL_PATH)/ffmpeg/lib/libavformat.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavcodec.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswresample.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswscale.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavutil.a \
    $(LOCAL_PATH)/ffmpeg/lib/libx264.a
#-- for ffmpeg library

LOCAL_MULTILIB := 32

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE := libffrecorder_jni

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += \
    -DUSE_MICDEV_ANDROID

LOCAL_SRC_FILES := \
    micdev_android.cpp \
    camdev.cpp \
    ffencoder.cpp \
    ffrecorder.cpp \
    com_apical_dvr_MediaRecorder.cpp

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libui \
    libgui \
    libandroid_runtime

#++ for ffmpeg library
LOCAL_CFLAGS += \
    -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/ffmpeg/include

LOCAL_LDFLAGS += -ldl \
    $(LOCAL_PATH)/ffmpeg/lib/libavformat.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavcodec.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswresample.a \
    $(LOCAL_PATH)/ffmpeg/lib/libswscale.a \
    $(LOCAL_PATH)/ffmpeg/lib/libavutil.a \
    $(LOCAL_PATH)/ffmpeg/lib/libx264.a
#-- for ffmpeg library

LOCAL_MULTILIB := 32

include $(BUILD_SHARED_LIBRARY)

