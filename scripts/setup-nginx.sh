#!/usr/bin/env bash
# Dijalankan di dalam instance (lihat laporan, bagian 2.7 dan 2.8)
set -e
sudo apt update && sudo apt install -y nginx
sudo mkdir -p /var/www/angeleno
sudo cp configs/nginx-angeleno.conf /etc/nginx/sites-available/angeleno
sudo ln -sf /etc/nginx/sites-available/angeleno /etc/nginx/sites-enabled/angeleno
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t && sudo systemctl reload nginx
