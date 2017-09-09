if [ ! -f "$0.done" ]; then
    mkfs -t ext2 -q /dev/ram1 512000
    [ ! -d /ramcache ] && mkdir -p /ramcache
    mount /dev/ram1 /ramcache 
    touch "$0.done"
fi`