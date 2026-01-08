#!/bin/sh
version=$(cat Dockerfile|head -1|cut -d ":" -f 2).1
docker buildx build --platform linux/amd64 -f Dockerfile --push --tag public.registry.zero11.org/zero11/vllm:$version .
