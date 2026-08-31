#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:packages.priority=109 \
    fedora.priority=99 \
    updates.priority=98 \
    fedora-cisco-openh264.priority=97 \
    terra.priority=89 \
    fedora-multimedia.priority=88 \
    terra-mesa.priority=87