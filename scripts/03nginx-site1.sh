if [ ! -f "$0.done" ]; then
    cp altenberg /etc/nginx/sites-available/altenberg
    ln -s /etc/nginx/sites-available/altenberg /etc/nginx/sites-enabled/altenberg
	systemctl restart nginx
    touch "$0.done"
fi