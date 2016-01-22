#!/bin/sh

REPO_DIR="$(cd $(dirname $(readlink -f $0)) && pwd)"

set -x

if [ $# -eq 1 ] ; then
  mkdir $1
  cd $1
fi

cp -i $REPO_DIR/skel/* .
