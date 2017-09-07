if [ ! -f "$0.done" ]; then
    apt-get install -y nginx
    touch "$0.done"
fi