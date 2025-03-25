#!/usr/bin/env bash

for i in {1..23}; do ssh imac${i}.lang.osaka-u.ac.jp "sh -c 'hostname; uptime'"; done
ssh imacserver.lang.osaka-u.ac.jp "sh -c 'hostname; uptime'"
