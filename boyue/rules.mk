BUILD_ROOT := $(shell pwd)
TARGET_DIR := $(BUILD_ROOT)/target
DOCKER_HUB := registry.cn-zhangjiakou.aliyuncs.com
TAG_VERSION := 1.0

export TARGET_DIR
export DOCKER_HUB
export TAG_VERSION