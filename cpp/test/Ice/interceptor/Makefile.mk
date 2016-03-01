# **********************************************************************
#
# Copyright (c) 2003-2016 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

include $(CLEAR_RULES)
LOCAL_EXE                       = client
LOCAL_PATH                      = cpp/test/Ice/interceptor
LOCAL_SLICES                    = Test.ice
LOCAL_SRCS                      = TestI.cpp \
                                  Client.cpp \
                                  InterceptorI.cpp \
                                  AMDInterceptorI.cpp \
                                  MyObjectI.cpp
include $(TEST_APPLICATION_RULES)
