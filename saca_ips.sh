#!/bin/bash

barney="$(lxc-ls --fancy |grep barney |cut -d '-' -f 2)"
homer="$(lxc-ls --fancy |grep homer |cut -d '-' -f 2)"
lisa="$(lxc-ls --fancy |grep lisa |cut -d '-' -f 2)"
echo "[lxc]" 
echo $barney
echo $homer
echo $lisa
echo "[barney]"
echo $barney
echo "[homer]"
echo $homer
echo "[lisa]"
echo $lisa
#inserción de datos
echo -e "[lxc] \n" $barney "\n"$homer "\n" $lisa "\n [barney] \n" $barney "\n [homer] \n" $homer "\n [lisa] \n"  $lisa >> hosts

echo -e "---\nbarney:\n - "$barney"\nhomer:\n - "$homer"\nlisa:\n - "$lisa > roles/dns/files/ips.yml
