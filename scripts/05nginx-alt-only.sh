if [ ! -f "$0.done" ]; then
    ln -s /etc/nginx/sites-available/altenberg /etc/nginx/sites-enabled/altenberg
    rm /etc/nginx/sites-enabled/welcome
    rm /etc/nginx/sites-enabled/default
    systemctl restart nginx
    touch "$0.done"
fi