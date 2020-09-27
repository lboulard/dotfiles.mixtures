#!/bin/sh

set -x
# Does not work and X11 windows are blurry
#gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling', 'scale-monitor-framebuffer']"
gsettings set org.gnome.desktop.interface text-scaling-factor 1.5

# Same as Xft.rgba (one of none, grayscale, rgba)
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "grayscale"

cat <<EOF
# Debian/Ubuntu:
# Add to file /etc/gdm3/greeter.dconf-defaults:
#  [org/gnome/desktop/interface]
#  text-scaling-factor=1.5
#
# Run '/usr/share/gdm/generate-config'
# Run 'systemctl restart gdm'

# Fedora:
# Create file /etc/dconf/db/gdm.d/00-HiDPI
#  [org/gnome/desktop/interface]
#  text-scaling-factor=1.5
# Create file /etc/dconf/profile/gdm
#  user-db:user
#  system-db:gdm
#
# Run 'dconf update'. /etc/dconf/db/gdm shall be created now.
# Run 'systemctl restart gdm'
EOF
