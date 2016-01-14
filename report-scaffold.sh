#!/bin/sh

REPO_DIR="$(cd $(dirname $(readlink -f $0)) && pwd)"

set -x

cp $REPO_DIR/skel/* .
