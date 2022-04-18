#!/bin/bash
#Clean Install
rm -f "/data/data/com.termux/files/home/bin/termux-url-opener"
mkdir /data/data/com.termux/files/home/bin

#Installing dependencies (and cleaning the leftovers)
pkg update -y && pkg install wget python ffmpeg termux-api -y
yes | pip install youtube-dl spotdl yt-dlp you-get rapidfuzz==1.9.1 beautifulsoup4==4.10.0
pkg clean && pip cache purge

wget --no-check-certificate --output-document="/data/data/com.termux/files/usr/bin/rbtv-dl" "https://raw.githubusercontent.com/M3GABOY/rbtv-dl/main/rbtv-dl.py"
chmod +x "/data/data/com.termux/files/usr/bin/rbtv-dl"

wget --no-check-certificate --output-document="/data/data/com.termux/files/usr/bin/bandcamp-dl" "https://raw.githubusercontent.com/M3GABOY/bandcamp-dl/main/bandcamp-dl.py"
chmod +x "/data/data/com.termux/files/usr/bin/bandcamp-dl"

#Installing the script
wget -P /data/data/com.termux/files/home/bin/ --no-check-certificate "https://raw.githubusercontent.com/NotesOfReality/Termux_url_opener_all_in_one_downloader/WIP/termux-url-opener" 
chmod +x "/data/data/com.termux/files/home/bin/termux-url-opener"
termux-setup-storage