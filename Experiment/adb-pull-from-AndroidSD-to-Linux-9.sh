#! /bin/bash

# NAME=$(adb shell sm list-volumes public|awk '{print $3}')

NAME=$(adb shell sm list-volumes public|awk '{print $3}')
STORAGE1=$(printf "storage/")
SDCARD=$(printf "/adb-SD-android/")

# path=$("storage/""$NAME" -name "/adb-SD-android/")

# path=$(echo "storage/" "$NAME" echo "/adb-SD-android/")

path=$("$STORAGE1""$NAME""$SDCARD")

adb pull "$path" $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/


# adb pull storage/"${NAME}"/adb-SD-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/
# DEV_NAME=$(zenity --list --title "¿En qué dispositivo se instalará?" --column "Dispositivos disponibles" $(echo "$DEV_LIST" | xargs))
# adb -s "$DEV_NAME" install "$path" | tee /tmp/installlog.txt | zenity --progress --text "Instalación "$path" por dispositivo "$DEV_NAME"" --pulsate --auto-close --no-cancel



### Working command
### adb pull /storage/DE66-2D1E/adb-SD-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/

### Try to automate with this information:
### `xdpyinfo | grep 'dimensions:'|awk '{print $2}'`
### ffmpeg -f alsa -ac 2 -i jackplug -f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -r 25 -i :0.0 -preset ultrafast $HOME/screencast_video.mp4
### How to Easily Make MicroSD Card Become Internal Memory Without Root - No More Insufficient Storage - Hard Reset & Factory Default Community
### https://www.hard-reset.org/smartphone-tablet/how-to-easily-make-microsd-card-become-internal-memory-without-root-no-more-insufficient-storage/



