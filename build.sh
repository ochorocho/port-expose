#!/bin/bash

docker build --pull . -f Dockerfile -t ochorocho/expose:latest && docker run --rm -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" ochorocho/expose:latest /tmp/test.sh