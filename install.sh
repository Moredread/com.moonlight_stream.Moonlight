#!/bin/sh

tmp_file="/tmp/moonlight-nightly.flatpak";

[ -e file ] && rm $tmp_file;
curl -L -o $tmp_file https://github.com/FrogTheFrog/com.moonlight_stream.Moonlight/releases/download/nightly/com.moonlight_stream.Moonlight.flatpak;

sudo flatpak uninstall com.moonlight_stream.Moonlight -y;
sudo flatpak install "$tmp_file" -y;

[ -e file ] && rm $tmp_file;
