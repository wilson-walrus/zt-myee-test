#!/bin/bash

echo "starting setup-rhel2.sh" >> /tmp/setup-rhel2.log
dnf remove -y tmux
# systemctl stop dnf-automatic-install.timer
# systemctl disable dnf-automatic-install.timer
# systemctl mask dnf-automatic-install.timer