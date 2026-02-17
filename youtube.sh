#!/bin/bash
var=$(echo $1 | sed "s/yt:/https:/")
mpv --profile=yt --hwdec=auto $var
