#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:packages.priority=109 \
    fedora.priority=99 \
    updates.priority=98 \
    fedora-cisco-openh264.priority=97 \
    rpmfusion-free.priority=89 \
    rpmfusion-nonfree.priority=88 \
    rpmfusion-free-updates.priority=87 \
    rpmfusion-nonfree-updates.priority=86 \
    terra.priority=79 \
    terra-mesa.priority=78