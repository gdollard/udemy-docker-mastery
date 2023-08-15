#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

version="$1"
image_name="gdollard/test-node-image-assignment-1:$version"

echo "Attempting to run image: $image_name"

docker run -d --rm -p 80:3000 $image_name