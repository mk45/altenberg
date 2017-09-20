if [ ! -f "$0.done" ]; then
    cp altenberg /etc/nginx/sites-available/altenberg
    systemctl restart nginx
    touch "$0.done"
fi
