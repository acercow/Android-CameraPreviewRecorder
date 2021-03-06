LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm 

LOCAL_STATIC_LIBRARIES := libcommontool libvideoencoder 

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/../3rdparty/ffmpeg/include \
    $(LOCAL_PATH)/../libcommon \
    $(LOCAL_PATH)/../video_encoder 
        
LOCAL_CFLAGS +=  \
	-DGL_GLEXT_PROTOTYPES\
	-DEGL_EGLEXT_PROTOTYPES
    
LOCAL_SRC_FILES = \
./recording_preview_renderer.cpp \
./mv_recording_preview_controller.cpp 

LOCAL_MODULE := libcamerapreview
include $(BUILD_STATIC_LIBRARY)