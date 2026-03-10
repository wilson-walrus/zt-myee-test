#!/bin/bash

systemctl stop dnf-automatic-install.timer
systemctl disable dnf-automatic-install.timer
systemctl mask dnf-automatic-install.timer

cd /root
curl -fsSL https://github.com/block/goose/releases/download/stable/download_cli.sh | bash
