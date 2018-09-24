FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
		openscad \
    && rm -rf /var/lib/apt/lists/*
	# --no-install-recommends && rm -rf /var/lib/apt/lists/*
  # we install recommends to use openscad with embeded renderer
