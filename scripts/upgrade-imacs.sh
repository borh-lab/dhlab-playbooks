#!/usr/bin/env bash

for i in $(seq -f "%01g" 1 2); do
	echo "=================================================="
	echo imac-2021-${i}
	ssh imac-2021-${i}.lang.osaka-u.ac.jp "sw_vers -productversion"
	ssh imac-2021-${i}.lang.osaka-u.ac.jp "pkgutil --pkg-info=com.apple.pkg.cltools_executables"
	ssh imac-2021-${i}.lang.osaka-u.ac.jp "sh -c 'nohup sudo softwareupdate -i -a --restart > /dev/null 3>&1 &'"
done
echo "=================================================="

for i in $(seq -f "%01g" 1 18); do
	echo "=================================================="
	echo imac-2022-${i}
	ssh imac-2022-${i}.lang.osaka-u.ac.jp "sw_vers -productversion"
	ssh imac-2022-${i}.lang.osaka-u.ac.jp "pkgutil --pkg-info=com.apple.pkg.cltools_executables"
	ssh imac-2022-${i}.lang.osaka-u.ac.jp "sh -c 'nohup sudo softwareupdate -i -a --restart > /dev/null 3>&1 &'"
done
echo "=================================================="

for i in $(seq 1 1); do
	echo "=================================================="
	echo macmini-2021-${i}
	ssh macmini-2021-${i}.lang.osaka-u.ac.jp "sw_vers -productversion"
	ssh macmini-2021-${i}.lang.osaka-u.ac.jp "pkgutil --pkg-info=com.apple.pkg.cltools_executables"
	ssh macmini-2021-${i}.lang.osaka-u.ac.jp "sh -c 'nohup sudo softwareupdate -i -a --restart > /dev/null 3>&1 &'"
done
echo "=================================================="
