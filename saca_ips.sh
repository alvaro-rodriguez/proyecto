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
#Versión para la demo
#echo -e "[lxc] \n"$barney "\n"$homer "\n"$lisa "\n[barney] \n"$barney "\n[homer] \n"$homer "\n[lisa] \n"$lisa >> /etc/ansible/hosts

## Es necesario usar la ruta completa para escribir el diccionario de ips ejecutando el script desde ansible.
#echo -e "---\nbarney:\n - "$barney"\nhomer:\n - "$homer"\nlisa:\n - "$lisa > roles/dns/files/ips.yml
#echo -e "---\nbarney:\n - "$barney"\nhomer:\n - "$homer"\nlisa:\n - "$lisa > /etc/ansible/roles/dns/files/ips.yml
