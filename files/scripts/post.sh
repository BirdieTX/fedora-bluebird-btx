#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt '*.enabled=0'
dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:packages.enabled=1 \
    fedora.enabled=1 \
    updates.enabled=1 \
    fedora-cisco-openh264.enabled=1 \
    terra.enabled=1 \
    fedora-multimedia.enabled=1 \
    terra-mesa.enabled =1
dconf update
systemctl disable NetworkManager-wait-online.service
systemctl enable grub-config.service
systemctl enable bluebird-pin-deployment.timer
plymouth-set-default-theme bgrt-mac-style
