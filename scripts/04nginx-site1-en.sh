if [ ! -f "$0.done" ]; then
    ln -s /etc/nginx/sites-enabled/altenberg /etc/nginx/sites-available/altenberg
    ln -s /etc/nginx/sites-enabled/welcome /etc/nginx/sites-available/welcome
    systemctl restart nginx
    touch "$0.done"
fi