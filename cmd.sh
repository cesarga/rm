#!/usr/bin/env bash

PING="$(ping -c 1 8.8.8.8 | sed -nE 's/.*time=([0-9.]+).*/\1/p')"
(curl -sfL "https://uptime.d3riva.com/api/push/dhJqj2z9OB?status=up&msg=200%20-%20OK&ping=$PING") >/dev/null 2>&1
