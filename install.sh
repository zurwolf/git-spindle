#!/usr/bin/env bash

echo "Install the package"
echo "pip install --upgrade --user -e $(pwd)"
pip install -U --user -e .

echo "Building the man pages"
cd docs
make man
echo "Installing the man pages"
cp -v _build/man/git-*.1 ${HOME}/.local/share/man/man1/
