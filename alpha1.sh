#!/bin/bash
url=`$1`
mdisk=`df -h |grep "/uploads" |awk '{print $1}'`
mtdisk=`[ "$(ls -A /uploads)" ] && echo "Not_Empty" || echo "Empty"`

if [ "$mdisk" == "hrhuser1@207.111.167.129:/uploads" ] && [ "$mtdisk" == "Not_Empty" ] ; then
echo "storage is already mounted"
cd /uploads/videos/Qatar && /usr/local/bin/youtube-dl --no-playlist  -f best $url;
else
/bin/bash /root/mount.sh
echo "storage is mounted successfully"
cd /uploads/videos/Qatar && /usr/local/bin/youtube-dl --no-playlist  -f best $url;
rm -f /root/alpha1.sh
exit
fi
