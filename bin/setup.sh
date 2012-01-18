#!/bin/sh
cd "`dirname "$0"`"/.. || exit
git submodule update --init
sh ./bin/mklink.sh
vim -c :BundleInstall -c ':qa!'
sh ./bin/get-phpmanual.sh