# Orange Workflows in a Podman Container

This repository makes it easy to build and run [orange workflows](https://github.com/biolab/orange3) 
within a `Podman` container.

The image is based on [python:3.9-slim-bullseye](https://hub.docker.com/layers/library/python/3.9-slim-bullseye/images/sha256-8f51921c17fc548cd4934264e0b2d1efa81263b640cca9dc77350358532aef3e?context=explore). 


# Build

You can build the podman image using:

```bash
./bin/build.sh
```

If you want to use a specific tag you can set an environment varible. e.g:

```tag
TAG=mytag ./bin/build.sh
```

# Run

```bash
./bin/run.sh
```

If you want to use a specific tag you can set an environment varible. e.g:

```tag
TAG=mytag ./bin/run.sh
```
