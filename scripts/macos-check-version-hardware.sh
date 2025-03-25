#!/usr/bin/env bash

for i in {1..23}; do ssh imac${i}.lang.osaka-u.ac.jp "sh -c 'hostname; uptime; sw_vers; sysctl -n machdep.cpu.brand_string'"; done
ssh imacserver.lang.osaka-u.ac.jp "sh -c 'hostname; uptime; sw_vers; sysctl -n machdep.cpu.brand_string'"
ssh macosserver.lang.osaka-u.ac.jp "sh -c 'hostname; uptime; sw_vers; sysctl -n machdep.cpu.brand_string'"
