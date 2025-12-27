// Copyright (c) 2025 The Jaeger Authors.
// SPDX-License-Identifier: Apache-2.0

//go:build tools

package tools

// This file follows the recommendation at
// https://go.dev/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module
// on how to pin tooling dependencies to a go.mod file.

import (
	_ "github.com/go-delve/delve/cmd/dlv"
)
