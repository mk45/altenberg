if [ ! -f "$0.done" ]; then
    cp altenberg /etc/nginx/sites-available/altenberg
    cp welcome /etc/nginx/sites-available/welcome
    systemctl restart nginx
    touch "$0.done"
fi