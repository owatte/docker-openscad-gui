#!/bin/bash

# @Author: Olivier Watté <user>
# @Date:   2018-09-23T16:26:34-04:00
# @Email:  owatte@ipeos.com
# @Last modified by:   user
# @Last modified time: 2018-09-23T19:57:06-04:00
# @License: GPLv3
# @Copyright: IPEOS I-Solutions


set -e

HOME=`pwd`

docker run --rm \
	-u $(id -u):$(id -g) \
	-v "$HOME:$HOME" \
	-w "$HOME" \
  -e HOME \
	-e DISPLAY \
	-e DISPLAY=unix$DISPLAY \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  openscad openscad "@$"
