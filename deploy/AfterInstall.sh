#!/bin/bash
touch /etc/systemd/system/node-app.service
echo "[Unit]
Description=NodeJS Web Service
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=1
User=root
ExecStart=/srv/nodejs/node-app

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/node-app.service
