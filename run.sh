while true;
do
 cd scripts
 for f in *.sh; do
   bash "$f" -H  || break
 done
 cd ..
 sleep `cat ./gitpulldelay`
 git pull
done
