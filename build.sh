#!/bin/bash

# If you need platform specific dependencies,
# add the flag --platform=linux/amd64 (or which ever architecture you require)

# docker build --platform=linux/amd64 -t web-server -f Dockerfile .

# else

docker build -t web-server -f Dockerfile .