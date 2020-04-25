#!/bin/bash
cd /uploads/videos/Qatar/; for i in `cat /root/file1`;do /usr/local/bin/youtube-dl --no-playlist  -f 22 $i; done
