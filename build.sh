#!/bin/bash

# build image
docker build -t coinfoundry/dash-public-testnet .
docker push coinfoundry/dash-public-testnet
