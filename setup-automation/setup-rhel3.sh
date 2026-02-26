#!/bin/bash

systemctl stop dnf-automatic-install.timer
systemctl disable dnf-automatic-install.timer
systemctl mask dnf-automatic-install.timer

curl -fsSL https://lmstudio.ai/install.sh | bash
