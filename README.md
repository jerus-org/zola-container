# zola-container

Provide a container to support the zola-orb and provide the tools required to run the commands.

## Configuration Files

### Dockerfile

The Dockerfile builds a container based on CircleCI's cimg/base.

To this we add:

- zola binary

### Makefile

The Makefile builds, tags and publishes the container image to the container repository. The image is tagged with the zola version number.

## Usage

### Generating container images

Use make to build and publish an image to the repo.

### Usage in CircleCI

The image is used in the zola-orb executor.
