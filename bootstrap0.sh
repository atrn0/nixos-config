#!/usr/bin/env bash

set -euxo pipefail

: "${NIXBLOCKDEVICE:=nvme0}"

parted /dev/$NIXBLOCKDEVICE -- mklabel gpt
parted /dev/$NIXBLOCKDEVICE -- mkpart primary 512MiB -8GiB
parted /dev/$NIXBLOCKDEVICE -- mkpart primary linux-swap -8GiB 100%
parted /dev/$NIXBLOCKDEVICE -- mkpart ESP fat32 1MiB 512MiB
parted /dev/$NIXBLOCKDEVICE -- set 3 esp on
mkfs.ext4 -L nixos /dev/${NIXBLOCKDEVICE}p1
mkswap -L swap /dev/${NIXBLOCKDEVICE}p2
mkfs.fat -F 32 -n boot /dev/${NIXBLOCKDEVICE}p3
mount /dev/disk/by-label/nixos /mnt
mkdir -p /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot
swapon /dev/${NIXBLOCKDEVICE}p2
nixos-generate-config --root /mnt
curl --location --output /mnt/etc/nixos/configuration.nix https://raw.githubusercontent.com/atrn0/nixos-config/main/configuration.nix
nixos-install --no-root-passwd
reboot
