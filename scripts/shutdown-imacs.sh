#!/usr/bin/env bash

machines=(
  "imac21.lang.osaka-u.ac.jp"
  "macmini-2021-1.lang.osaka-u.ac.jp"
  "imac-2021-01.lang.osaka-u.ac.jp"
  "imac-2021-02.lang.osaka-u.ac.jp"
  "iMac-2022-01.lang.osaka-u.ac.jp"
  "iMac-2022-02.lang.osaka-u.ac.jp"
  "iMac-2022-03.lang.osaka-u.ac.jp"
  "iMac-2022-04.lang.osaka-u.ac.jp"
  "iMac-2022-05.lang.osaka-u.ac.jp"
  "iMac-2022-06.lang.osaka-u.ac.jp"
  "iMac-2022-07.lang.osaka-u.ac.jp"
  "iMac-2022-08.lang.osaka-u.ac.jp"
  "iMac-2022-09.lang.osaka-u.ac.jp"
  "iMac-2022-10.lang.osaka-u.ac.jp"
  "iMac-2022-11.lang.osaka-u.ac.jp"
  "iMac-2022-12.lang.osaka-u.ac.jp"
  "iMac-2022-13.lang.osaka-u.ac.jp"
  "iMac-2022-14.lang.osaka-u.ac.jp"
  "iMac-2022-15.lang.osaka-u.ac.jp"
  "iMac-2022-16.lang.osaka-u.ac.jp"
  "iMac-2022-17.lang.osaka-u.ac.jp"
  "iMac-2022-18.lang.osaka-u.ac.jp"
  "imac-2017-1.lang.osaka-u.ac.jp"
)

# SSH_USER=""
# SSH_KEY="~/.ssh/id_ed25519.ansible_deploy_user"

for machine in "${machines[@]}"; do
  echo "=================================================="
  echo "Shutting down $machine"
  # ssh -i "$SSH_KEY" "$SSH_USER@$machine" "sh -c 'nohup sudo shutdown now > /dev/null 2>&1 &'"
  ssh machine "sh -c 'nohup sudo shutdown now > /dev/null 2>&1 &'"
done

echo "=================================================="
