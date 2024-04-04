# neb-docker-creator
Nebulous: Fleet Command Docker Creator is a project to create docker containers for nebulous fleet command servers with a simple scipt. It's a two part system:
- A base image dervied from [the steamcmd docker image](https://hub.docker.com/r/steamcmd/steamcmd) (which itself is based on debian-slim) before having the Nebulous: Fleet Command server binary installed.
- In progress
    - Might nclude an SSH client so you can modify your running server

Modifications and contributions are more than welcome. Just fork it, modify it, and make a pull request when complete.

The base image is rebuilt daily in order to keep all packages up to date.

