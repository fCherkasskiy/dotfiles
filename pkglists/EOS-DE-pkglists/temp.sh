#!/usr/bin/env bash

for p in $(<"$1"); do
  yes | pacman -S --needed "$p"
done
