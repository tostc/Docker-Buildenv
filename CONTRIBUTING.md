# Contributing to Docker-Buildenv

Everybody is free to use and contribute to this project as long the following criterias are met:

1. Please check if your build enviroment is already part of this project. You can of course edit any given Dockerfile if a neccessarry package is missing. If you think your contribution needs its own file you need a good argument for that.
2. Your Dockerfile should be easy to understand, please use commits for special environment variables or some special commands which are executed.
3. The creation of the container should be frustration free and tested by you, the contributor. There should no errors either by the building of the container nor by the using of the container.
4. The working directory, inside the container, should always at path `/root/env`. Where the path is a volume where the user can mount their project directory.\
```Dockerfile
VOLUME /root/env
WORKDIR /root/env
```
5. Please always name your Dockerfile in the following format `BUILDENV_NAME.Dockerfile.`
6. If your container has something special, which the user must aware of, please create a `BUILDENV_NAME-README.md` inside the `Docs` directory where you describe what the user must be aware of.

# Annotation

Please be aware of that, if you contribute your Dockerfile to this repository, the file will be release to the Public Domain.