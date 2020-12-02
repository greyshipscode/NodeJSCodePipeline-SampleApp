#!/bin/bash

echo "[Unit]
Description=ROT13 demo service
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=1
User=ec2-user
ExecStart=/srv/nodejs/node-app

[Install]
WantedBy=multi-user.target" >> /etc/systemd/system/node-app.service
