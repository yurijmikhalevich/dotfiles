#!/bin/sh
set -e
cd "$(dirname "$0")"
for app in kitty nvim; do
  target=~/.config/$app
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "$target is a real directory; move it away first" >&2
    exit 1
  fi
  ln -sfn "$PWD/$app" "$target"
done
