if [ ! -f "$0.done" ]; then
    rm /etc/nginx/sites-available/default
    echo "radekaltenberg:$(openssl passwd -crypt aer170920x)\n" >> /etc/nginx/.htpasswd
    systemctl restart nginx
    touch "$0.done"
fi
