if [ ! -f "$0.done" ]; then
    cp altenberg /etc/nginx/sites-available/altenberg
    rm /etc/nginx/.htpasswd
    echo "radekaltenberg:$(openssl passwd -crypt aer170920x)" >> /etc/nginx/.htpasswd
    systemctl restart nginx
    touch "$0.done"
fi
