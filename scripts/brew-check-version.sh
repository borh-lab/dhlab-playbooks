#!/usr/bin/env bash

COMMAND="echo \$(hostname) && /usr/local/bin/brew info --cask visual-studio-code"

for i in {1..23}; do ssh imac${i}.lang.osaka-u.ac.jp "$COMMAND"; done
ssh imacserver.lang.osaka-u.ac.jp "$COMMAND"
