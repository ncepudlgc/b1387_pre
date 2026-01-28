#!/bin/bash
NAMESPACE="${1:-codebase_b1387_app}"
docker build -t "$NAMESPACE" .
