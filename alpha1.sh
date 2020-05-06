#!/bin/bash
url=`$1`
mdisk=`df -h |grep "/uploads" |awk '{print $1}'`
mtdisk=`[ "$(ls -A /uploads)" ] && echo "Not_Empty" || echo "Empty"`

if [ "$mdisk" == "hrhuser1@207.111.167.129:/uploads" ] && [ "$mtdisk" == "Not_Empty" ] ; then

cd /uploads/videos/Qatar/;
/usr/local/bin/youtube-dl --no-playlist  -f best $url;

else
echo 'Tellm3n0w' | sshfs  -p 2105  -o allow_other,default_permissions -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null hrhuser1@207.111.167.129:/uploads /upl$

cd /uploads/videos/Qatar/;
/usr/local/bin/youtube-dl --no-playlist  -f best $url;
rm -f /root/alpha.sh
exit
fi

