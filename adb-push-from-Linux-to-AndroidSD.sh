#! /bin/bash

MICROSD=$(adb shell sm list-volumes public | perl -lane 'print $F[-1]')

adb push $HOME/adb-linux/ /storage/$MICROSD/adb-SD-android-$(date '+%Y-%m-%d_%H.%M.%S')/

# Backup
# adb push $HOME/adb-linux/ /storage/xxxx-xxxx/adb-SD-android-$(date '+%Y-%m-%d_%H.%M.%S')/
