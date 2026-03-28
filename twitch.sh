#!/bin/bash
var=$(echo $1 | sed "s/tw:/https:/")
chattervar=$(echo $1 | sed "s/tw:\/\/www.twitch.tv\///")
streamlink -p mpv $var best --twitch-proxy-playlist=https://eu.luminous.dev,https://eu2.luminous.dev,https://as.luminous.dev & chatterino -c t:$chattervar
