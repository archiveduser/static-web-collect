#!/bin/bash
shopt -u dotglob

# https://github.com/fanmingming/live.git
git clone https://github.com/fanmingming/live.git ./repo/fanmingming-live --depth=1
rsync -a --include='tv/***' --include='e.xml' --exclude='*' ./repo/fanmingming-live/ ./dist/fanmingming-live/

# https://github.com/novnc/noVNC.git
git clone https://github.com/novnc/noVNC.git ./repo/novnc --depth=1
rsync -a --exclude='.*' --exclude='utils' --exclude='tests' --exclude='snap' ./repo/novnc/ ./dist/novnc/

# stats
echo "Size: $(du -sh ./dist)"
echo "Count: $(tree ./dist |wc -l)"