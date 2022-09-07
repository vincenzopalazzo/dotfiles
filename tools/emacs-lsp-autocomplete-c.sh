#!/usr/bin/env sh
#
# Stupid script that take a global path and
# generate all necessary info to have the auto completion
# on a C project that use Makefile.
#
# Source: https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/
sudo apt-get install bear
cd $1 | exit 1
echo "Moved in $1"
cd $1 && bear -vvv make -j$(nproc)
