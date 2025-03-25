#!/usr/bin/env bash

for i in {1..23}; do ssh -n -f imac${i}.lang.osaka-u.ac.jp "sh -c 'nohup sudo shutdown -r now > /dev/null 2>&1 &'"; done
ssh -n -f imacserver.lang.osaka-u.ac.jp "sh -c 'nohup sudo shutdown -r now > /dev/null 2>&1 &'"
