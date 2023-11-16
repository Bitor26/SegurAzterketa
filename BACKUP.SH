#!/bin/bash

fecha_actual=$(date +%Y-%m-%d)

fecha_ayer=$(date -d "yesterday" +%Y-%m-%d)

rsync -av --link-dest="/var/tmp/Backups/$fecha_ayer" /home/diego/Segurtasuna/ "lsi@34.175.51.147:/var/tmp/Backups/$fecha_actual"
