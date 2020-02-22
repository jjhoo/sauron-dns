#!/bin/sh

if [ ! -z "$1" ]; then
    cat > /etc/apt/apt.conf.d/600-apt-cacher-ng.conf <<EOF
APT::Install-Recommends "false";
APT::Install-Suggests "false";

Acquire {
  Languages "en";
  PDiffs "false";
  Source-Symlinks "false";

  http {
    Proxy "$1";
  }
}
EOF
else
    cat > /etc/apt/apt.conf.d/600-apt-cacher-ng.conf <<EOF
APT::Install-Recommends "false";
APT::Install-Suggests "false";

Acquire {
  Languages "en";
  PDiffs "false";
  Source-Symlinks "false";
}
EOF

fi
