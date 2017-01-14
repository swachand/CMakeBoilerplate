#!/bin/bash
# Starts a cppdev container bash session with the project folder mounted and set as the current working directory
proj="$(basename $(dirname $PWD))"
docker run -it -v "$proj/..:/%proj" -w "/$proj" cppdev bash