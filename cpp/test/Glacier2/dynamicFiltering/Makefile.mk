# **********************************************************************
#
# Copyright (c) 2003-2015 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

include $(CLEAR_RULES)

LOCAL_PATH	= cpp/test/Glacier2/dynamicFiltering

CLIENT_SLICES	= Test.ice

CLIENT_SRCS	= Client.cpp

CLIENT_LINK_WITH = Glacier2

SERVER_SLICES	= Test.ice

SERVER_SRCS	= Server.cpp \
		  SessionI.cpp \
		  BackendI.cpp \
		  TestControllerI.cpp

SERVER_LINK_WITH = Glacier2

include $(CLIENTSERVERTEST_RULES)
