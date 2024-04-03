#!/bin/bash

while true; do
  read -p "Value to encode:" var
  clear
  qrencode -t ansiutf8 "otpauth://totp/?secret=${var}"
done
