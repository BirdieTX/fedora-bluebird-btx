#!/usr/bin/env bash

set -oue pipefail

dnf5 config-manager setopt \
    copr:copr.fedorainfracloud.org:ublue-os:packages.priority=109 \
    copr:copr.fedorainfracloud.org:ublue-os:akmods.priority=108 \
    updates-archive.priority=100 \
    fedora.priority=99 \
    updates.priority=98 \
    fedora-cisco-openh264.priority=97 \
    terra.priority=89 \
    fedora-multimedia.priority=88 \
    terra-mesa.priority=87

dnf5 config-manager setopt \
    updates-archive.name='Fedora Updates (Archive)'
    copr:copr.fedorainfracloud.org:ublue-os:packages.name='Universal Blue' \
    copr:copr.fedorainfracloud.org:ublue-os:akmods.name='Nvidia Drivers'
    fedora.name='Fedora Core' \
    updates.name='Fedora Updates' \
    fedora-cisco-openh264.name='Cisco OpenH264' \
    terra.name='Fyra Labs Terra' \
    fedora-multimedia.name='Fedora Multilib' \
    terra-mesa.name='Fyra Labs Mesa'
