#!/bin/bash

echo "Restarting Apache (httpd)..."
sudo systemctl restart httpd

if systemctl status httpd | grep -q running; then
    echo "Apache restarted successfully."
    exit 0
else
    echo "Apache failed to restart."
    exit 1
fi
