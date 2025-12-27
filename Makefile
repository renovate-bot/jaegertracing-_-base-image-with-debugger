# Copyright (c) 2025 The Jaeger Authors.
# SPDX-License-Identifier: Apache-2.0

IMAGE_NAME ?= base-image-with-debugger
TAG ?= latest

.PHONY: build
build:
	docker build -t $(IMAGE_NAME):$(TAG) .

.PHONY: build-all
build-all:
	docker buildx build --platform linux/amd64,linux/arm64,linux/s390x,linux/ppc64le -t $(IMAGE_NAME):$(TAG) .
