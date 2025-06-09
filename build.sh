#!/bin/sh
version=$(cat Dockerfile|head -1|cut -d ":" -f 2)
docker buildx build --provenance=false --sbom=false --platform linux/amd64 -f Dockerfile --push --tag ghcr.io/zero11it/vllm:$version .
docker buildx build --platform linux/amd64 -f Dockerfile --push --tag registry.zero11.org/zero11/vllm:$version .
