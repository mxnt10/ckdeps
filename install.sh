#!/bin/bash

PRGNAM="ckdeps"
VERSION=$(< RELEASE)
install_root=${install_root:-""}

set -e
[ "$install_root" != "" ] && {
  mkdir -p "$install_root"/usr/{bin,share/applications,doc/"$PRGNAM"-"$VERSION"}
} || {
  mkdir -p /usr/doc/"$PRGNAM"-"$VERSION"
}

install -Dm 0755 "$PRGNAM" "$install_root"/usr/bin
cp -a RELEASE LICENSE README.md "$install_root"/usr/doc/"$PRGNAM"-"$VERSION"

exit 0
