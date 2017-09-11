if [ ! -f "$0.done" ]; then
    ln -s /etc/nginx/sites-available/altenberg /etc/nginx/sites-enabled/altenberg
    ln -s /etc/nginx/sites-available/welcome   /etc/nginx/sites-enabled/welcome
    systemctl restart nginx
    touch "$0.done"
fi