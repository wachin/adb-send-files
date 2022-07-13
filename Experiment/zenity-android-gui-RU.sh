#!/bin/bash
## How to facilitate the installation of .apk on Android or the GUI for adb install
## https://sudonull.com/post/118543-How-to-facilitate-the-installation-of-apk-on-Android-or-the-GUI-for-adb-install
DEV_LIST=$(adb devices | awk '/device$/{if (NR!=1) {print $1}}')
#Especifique la ruta al directorio donde se encuentran los archivos .apk
DIR_PATH="/home/wachin/adb-linux/"
while [ -z "$DEV_LIST" ]; do
zenity --question --title="Ningún dispositivo Android conectado" --text="Проверить заново?" --height=100 --width=400
 if [ $? -eq "0" ]; then 
	DEV_LIST=$(adb devices | awk '/device$/{if (NR!=1) {print $1}}')
 else
	notify-send "ADB" "Операция отменена"
	exit
 fi
done
path=$(find "$DIR_PATH" -name "*.apk*" | zenity --list --title "Найденные файлы в директории "$DIR_PATH"" --column "Список всех .apk" --height=370 --width=600)
 if [ $? -eq "1" ];
	then exit
 fi
if [ $(echo "$DEV_LIST" | wc -l) -ne "1" ]
then
    DEV_NAME=$(zenity --list --title "На какое устройство будет произведена установка?" --column "Доступные устройства" $(echo "$DEV_LIST" | xargs))
 if [ $? -eq "1" ];then 
	notify-send "ADB" "Операция отменена"
	exit
 fi
else
    DEV_NAME="$DEV_LIST"
fi
adb -s "$DEV_NAME" install "$path" | tee /tmp/installlog.txt | zenity --progress --text "Установка "$path" на устройство "$DEV_NAME"" --pulsate --auto-close --no-cancel
log=$(cat /tmp/installlog.txt)
zenity --info --title="Результат установки" --text="$log"
rm /tmp/installlog.txt
killall adb
exit
