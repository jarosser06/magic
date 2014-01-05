#!/bin/bash

pushd .chef
berks install -p cookbooks
popd
docker build -t tamuarch/magic .
