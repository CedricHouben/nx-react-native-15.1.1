#!/usr/bin/env bash
# fail if any command fails
set -e
# debug log
set -x
# Required nodeJS version
NODE_VERSION=16.13.2
# workaround to override the v8 alias
npm config delete prefix
. ~/.bashrc
nvm install "$NODE_VERSION"
nvm unalias default
nvm alias node16 "$NODE_VERSION"
npm i
cd ../..
npm i
