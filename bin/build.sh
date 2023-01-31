#!/bin/bash



BASE_PATH="$(realpath $(dirname $0)/..)"

TAG=${TAG:-latest}
IMAGE_NAME="orange-workflows:${TAG}"

podman build -t "${IMAGE_NAME}" -f podman/orange-podman.containerfile "${BASE_PATH}"
