# Docker-BuildEnv

## Introduction

Sometimes you like to build an application from source and need a compiler for this language. Maybe you like to compile your project for a special architecture or you need an older version of a compiler to build an old project. For all these cases you install a toolchain on your pc. But sometimes there will be some conflicts, like for an older version of your compiler or for a crosscompiler variant, Or maybe you just don't want to clutter your system.

For all these cases I like to introduce you, this project. Inside this repository you can find different dockerfiles for different build enviroments. This project should be community driven, so feel free and add your build enviroment of choice.

## Getting started

1. If you don't have already installed Docker, please install it.
2. Clone or download this repository. Alternative you can just copy the content of the needed Dockerfile.
3. Build the Dockerfile. `docker build -t NAME -f NAME_OF_DOCKERFILE`
4. Open a terminal and navigate to your project directory.
5. Start the container and mount your working directory.\
Linux / Unix: `docker run --rm -it -v "$PWD":/root/env NAME_FROM_3`\
Windows (CMD): `docker run --rm -it -v "%cd%":/root/env NAME_FROM_3`\
Windows (PowerShell): `docker run --rm -it -v "${pwd}:/root/env" NAME_FROM_3`
6. Now you are inside your container which has mounted your working directory. You can now build your project normally.

# Build enviroments

A list of all build enviroments inside this respository.

| Name | Description | Please read |
| ---- | ----------- | ----------- |
| devkitPro-GBA | This container contains the GBA toolchain from [devkitPro](https://devkitpro.org/) to create homebrew GBA games | |

# Contributing

Please read the [Contributing Guide](CONTRIBUTING.md).

# License

All Dockerfiles are released into the Public Domain with [The Unlicense](LICENSE).