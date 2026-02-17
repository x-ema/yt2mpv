###po5's Sponsorblock###
echo Downloading po5s Sponsorblock for mpv
git clone https://github.com/po5/mpv_sponsorblock
cp mpv_sponsorblock/sponsorblock.lua $HOME/.config/mpv/scripts/
cp -R mpv_sponsorblock/sponsorblock_shared $HOME/.config/mpv/scripts/

###christoph-heinrich's mpv-quality-menu###
echo Downloading christoph-heinrichs mpv-quality-menu
git clone https://github.com/christoph-heinrich/mpv-quality-menu
cp mpv-quality-menu/quality-menu.lua $HOME/.config/mpv/scripts/
cp mpv-quality-menu/quality-menu.conf $HOME/.config/mpv/script-opts/


###dependencies##
echo Installing dependencies
sudo pacman -S yt-dlp yt-dlp-ejs deno python mpv ffmpeg streamlink

###copy scripts
echo Copying scripts to their home
sudo cp tw.desktop /usr/share/applications/
sudo cp yt.desktop /usr/share/applications/
sudo cp youtube.sh /usr/local/bin/ 
sudo cp twitch.sh /usr/local/bin/ 
cp mpv.conf $HOME/.config/mpv/ 
cp input.conf $HOME/.config/mpv/

###apply changes
echo Applying changes...
sudo update-desktop-database

echo Done!
