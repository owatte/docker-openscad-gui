# Openscad

Dockerfile to provide a ready to use openscad full environment with GUI and renderer and can access to the local file system in RW mode.

This environment is intended to be used in 3D CAD courses at the "Université des Antilles" in Guadeloupe (French West Indies)

I made this image because Openscad depends on old libs like QT4 and is not more packaged with recent GNU/Linux version, such as GNU/Linux Debian 10 (Buster) or GNU/Linux Ubuntu 18.04 (Bionic Beaver)

This image is build on stable GNU/Linux Ubuntu 16.04 LTS (Xenial Xerus) and run openscad 2015-03-1

## Build
Automated build are not yet available so you have to build your owm image

```bash
$ sudo docker build -t openscad:latest .
```
## Install

[TODO] Coming soon : Automated builds of the image are available on [Dockerhub](https://hub.docker.com/) and is the recommanded method of installation.

## Run
In order to start the environment, use the [`run.sh`](run.sh) script.
```bash
$ sudo ./run.sh
```
### Stop
In order to stop the environment, hit `CTRL+C` in the window shell within openscad is running.

## Author

This image was created by [Olivier Watté](httpt://github.com/owatte/) for a purpose of 3D CAD training courses.

## Contributing

If you find this image useful here's how you can help:

* Send a Pull Request with your awesome enhancements and bug fixes
* Be a part of the community and help resolve Issues


## License

This docker file is licensed under the [GNU General Public License, version 3](LICENSE.md)
