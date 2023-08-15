#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

version="$1"
image_name="test-node-image-assignment-1"
repository="gdollard/$image_name"

# Log in to Docker Hub
docker login

# Build the Docker image
docker build -t $image_name .

# Tag the image with version
docker tag $image_name $repository:$version

# Push the tagged image to Docker Hub
docker push $repository:$version

echo "Image $repository:$version pushed to Docker Hub."
