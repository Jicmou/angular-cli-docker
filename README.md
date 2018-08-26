# Angular-cli docker

## Overview

@angular/cli docker image

The main purpose of this repo is to encapsulate @angular/cli in a container,
so we don't have to install it globally to create a new angular project.

## build

inside the repository:

``` bash
docker build --build-arg VERSION=[YOUR_WANTED_VERSION] -t [YOUR_IMAGE_NAME]:[YOUR_TAG]
```

`VERSION` defaults to `latest`

## use



``` bash
docker run -v $(pwd):/home/app [YOUR_IMAGE_NAME]:[YOUR_TAG] ng new [YOUR_APP_NAME] [...YOUR_OPTIONS]
```