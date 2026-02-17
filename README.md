# YT2MPV

Setup for personal mpv config that adds [po5's mpv_sponsorblock](https://github.com/po5/mpv_sponsorblock) and [cristoph-heinrich's mpv-quality-menu](https://github.com/christoph-heinrich/mpv-quality-menu).
For this to be fully utilized, the [Redirector plugin](https://github.com/einaregilsson/Redirector) should be installed in your browser. Note that this is **only set up for Firefox** right now and that using other browsers will require some tweaks.

Both YouTube and Twitch like to change things up to be difficult. Expect this to break every so often. If it does break, disable the redirects and keep an eye out for streamlink and ytdlp to update with a fix.

Installation:
```
git clone https://github.com/x-ema/YT2MPV
cd yt2mpv
sudo sh install.sh
```

Redirector Config:

Youtube Redirect:
```
Include pattern:https://*youtube.com/watch?*v=* 
Redirect to:yt://www.youtube.com/watch?$2v=$3 
Pattern type: Wildcard
Applies to:Main window (address bar) 
```

Twitch Redirect:
```
Include pattern:https://*twitch.tv/*
Redirect to:tw://www.twitch.tv/$2
Pattern type: Wildcard
Applies to:Main window (address bar)
```
