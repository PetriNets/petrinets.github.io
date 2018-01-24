#! /bin/sh

# run docker
IMG=jekyll
PWD=$(pwd)
docker build -t $IMG .
docker run --publish 4048:4048 -v $PWD:/jekyll $IMG /bin/bash -c "cd jekyll && jekyll serve --port 4048 --host 0.0.0.0"

