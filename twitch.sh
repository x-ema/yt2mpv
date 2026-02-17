#!/bin/bash
var=$(echo $1 | sed "s/tw:/https:/")
streamlink -p mpv $var best
