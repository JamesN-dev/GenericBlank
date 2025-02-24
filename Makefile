# Set the Rack SDK directory (relative path)
RACK_DIR ?= ../Rack-SDK

# Compiler and linker flags
FLAGS += -g -Wall -Wextra -Wno-unused-parameter -fno-omit-frame-pointer
CXXFLAGS += -std=c++11 $(FLAGS)
LDFLAGS +=

# Define sources
SOURCES += src/plugin.cpp
SOURCES += src/BigRedButton.cpp  # Add other module sources here

# Resources to include in the distributable ZIP
DISTRIBUTABLES += res
DISTRIBUTABLES += $(wildcard LICENSE*)
DISTRIBUTABLES += $(wildcard presets)

# Include the VCV Rack plugin Makefile framework
include $(RACK_DIR)/plugin.mk