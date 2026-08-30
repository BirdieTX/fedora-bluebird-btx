#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt '*.enabled=0'
dconf update
systemctl disable NetworkManager-wait-online.service
systemctl enable grub-config.service
plymouth-set-default-theme bgrt-mac-style