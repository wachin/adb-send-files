#! /bin/bash

MICROSD=$(adb shell sm list-volumes public | perl -lane 'print $F[-1]')

adb pull /storage/$MICROSD/adb-SD-android/ /home/wachin/adb-linux-2022-07-22_13.41.09/


# Backup
# adb pull /storage/xxxx-xxxx/adb-SD-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/
