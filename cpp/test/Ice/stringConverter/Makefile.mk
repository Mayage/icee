# **********************************************************************
#
# Copyright (c) 2003-2016 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

include $(CLEAR_RULES)
LOCAL_PATH                      = cpp/test/Ice/stringConverter
CLIENT_SRCS                     = Client.cpp
SERVER_SRCS                     = Server.cpp
include $(CLIENTSERVERTEST_RULES)
