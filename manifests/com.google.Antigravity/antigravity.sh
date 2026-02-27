#!/bin/bash

ELECTRON_RUN_AS_NODE=1 \
    exec \
    /app/bin/zypak-wrapper.sh \
    /app/extra/antigravity/antigravity \
    /app/extra/antigravity/resources/app/out/cli.js "$@"
