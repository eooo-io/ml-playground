#!/bin/bash

# Exit on error
set -e

# Default values
REGISTRY=${REGISTRY:-""}  # Add your registry prefix if needed
IMAGE_NAME=${IMAGE_NAME:-"ml-playground-jupyter"}
TAG=${TAG:-"latest"}

# Create builder instance if it doesn't exist
if ! docker buildx ls | grep -q multiarch-builder; then
    docker buildx create --name multiarch-builder --driver docker-container --bootstrap
fi

# Use the multiarch builder
docker buildx use multiarch-builder

# Build for both AMD64 and ARM64
echo "Building multi-architecture image for AMD64 and ARM64..."
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --tag ${REGISTRY}${IMAGE_NAME}:${TAG} \
    --push \
    .

echo "Multi-architecture build complete!"
echo "You can now pull the image using: docker pull ${REGISTRY}${IMAGE_NAME}:${TAG}"
