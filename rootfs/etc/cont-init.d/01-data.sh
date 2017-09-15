#!/bin/sh

if [ ! -d /data ]; then
    mkdir /data
fi

if [ ! -d /data/node-pool ]; then
    mkdir /data/node-pool
fi
