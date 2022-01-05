# All-in-one Download Script for Termux
All-in-one Download Script for Termux URL Opener.

This script requires **ffmpeg, youtube-dl, python, wget, spotdl, yt-dlp, rbtv-dl, bandcamp-dl, you-get** to function.

![Screenshot_20201103-143432_Termux.jpg](/screenshot.png)

# Using the script
"Send" the URL you want to target to Termux by [any Android native "sharing" intent you'd like](https://developer.android.com/training/sharing/send).

![share_icon.jpg](/share_icon.jpg)


# Installing the script
Launch Termux and run <details><summary>the following commands:</summary>
<p>
```
#Clean Install
rm -f "/data/data/com.termux/files/home/bin/termux-url-opener"
mkdir /data/data/com.termux/files/home/bin

#Installing dependencies
pkg update -y && pkg install wget python ffmpeg -y
yes | pip install youtube-dl  spotdl yt-dlp you-get bs4

wget --no-check-certificate --output-document="/data/data/com.termux/files/usr/bin/rbtv-dl" "https://raw.githubusercontent.com/M3GABOY/rbtv-dl/main/rbtv-dl.py"
chmod +x "/data/data/com.termux/files/usr/bin/rbtv-dl"

wget --no-check-certificate --output-document="/data/data/com.termux/files/usr/bin/bandcamp-dl" "https://raw.githubusercontent.com/M3GABOY/bandcamp-dl/main/bandcamp-dl.py"
chmod +x "/data/data/com.termux/files/usr/bin/bandcamp-dl"

#Installing the script
wget -P /data/data/com.termux/files/home/bin/ --no-check-certificate "https://raw.githubusercontent.com/NotesOfReality/Termux_url_opener_all_in_one_downloader/master/termux-url-opener" 
chmod +x "/data/data/com.termux/files/home/bin/termux-url-opener"
termux-setup-storage
```
</p>
</details>

Or simply run this
```
wget --no-check-certificate "https://raw.githubusercontent.com/NotesOfReality/Termux_url_opener_all_in_one_downloader/master/install.sh" && chmod +x install.sh && bash install.sh
```
Or you can do it by git clone
```
git clone https://github.com/NotesOfReality/Termux_url_opener_all_in_one_downloader.git && chmod +x install.sh && bash install.sh
```
Or also with git clone but in one script
```
git clone https://github.com/NotesOfReality/Termux_url_opener_all_in_one_downloader.git && chmod +x install.sh && bash install.sh
```
# FAQ
This script is blank sensitive. Therefore option "3" and "3 " are treated differently. While "3" will launch option 3, "3 " is invalid and will launch the default option.

# Changelog
```
Updated on Jul 31 2021: Changed relative path to absolute path to avoid path errors.
Updated on Jul 16 2021: Added RedBull TV and Bandcamp artist support. Replacing youtube-dlc with yt-dlp.
Updated on Nov 2 2020: Add you-get as an option for downloading
Updated on Nov 2 2020: Add support for subtitle embedding
Updated on Nov 1 2020: Add youtube-dlc as an option for downloading
Updated on Jun 18 2020: Change YouTube to mp3 audio quality to best available.
Updated on Jun 13 2020: Change spotdl Output format from flac to mp3.
Updated on Jun 12 2020: Added Spotify Support and youtube-dl Audio Conversion.

```
