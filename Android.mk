LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=\
	database.c do_command.c \
	entry.c	env.c job.c misc.c \
	popen.c pw_dup.c user.c cron.c
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE := cron
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=\
	misc.c entry.c env.c \
	pw_dup.c crontab.c
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE := crontab
include $(BUILD_EXECUTABLE)
