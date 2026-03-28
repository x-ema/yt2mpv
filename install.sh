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

###2bc4 streamlink-ttvlol
INSTALL_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/streamlink/plugins"; mkdir -p "$INSTALL_DIR"; curl -L -o "$INSTALL_DIR"/twitch.py 'https://github.com/2bc4/streamlink-ttvlol/releases/latest/download/twitch.py'

###dependencies##
echo Installing dependencies
sudo paru -S yt-dlp yt-dlp-ejs deno python mpv ffmpeg streamlink chatterino2-bin

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
