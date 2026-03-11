#!/bin/bash

systemctl stop dnf-automatic-install.timer
systemctl disable dnf-automatic-install.timer
systemctl mask dnf-automatic-install.timer

echo $LITELLM_API_KEY >> /root/LITELLM_API_KEY
chmod 600 /root/LITELLM_API_KEY

cd /root
git clone https://github.com/block/goose.git
cd goose
go build -o goose cmd/goose/main.go

./goose -api-key /root/LITELLM_API_KEY -model gpt-4o-mini -temperature 0.5 -max-tokens 1000 -messages "What is the weather in Tokyo?"

