#!/bin/bash
shopt -u dotglob

# https://github.com/fanmingming/live.git
git clone https://github.com/fanmingming/live.git ./repo/fanmingming-live --depth=1
rsync -a --include='tv/***' --include='e.xml' ./repo/fanmingming-live ./dist

# stats
echo "Size: $(du -sh ./dist)"
echo "Count: $(tree ./dist |wc -l)"