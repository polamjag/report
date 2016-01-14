#!/bin/sh

REPO_DIR="$(cd $(dirname $0) && pwd)"

ln -sr $REPO_DIR/report-scaffold.sh $HOME/bin/report-scaffold

mkdir -p $HOME/.pandoc/
ln -sr $REPO_DIR/templates $HOME/.pandoc/
