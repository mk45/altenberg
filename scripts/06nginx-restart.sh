if [ ! -f "$0.done" ]; then
    systemctl restart nginx
    touch "$0.done"
fi