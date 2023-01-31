#!/bin/bash

BASE_PATH="$(realpath $(dirname $0)/..)"

TAG=${TAG:-latest}
IMAGE_NAME="orange-workflows:${TAG}"

podman run -it --rm \
    --userns keep-id \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    $IMAGE_NAME "$@"
