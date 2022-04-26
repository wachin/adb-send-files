#! /bin/bash

adb push $HOME/adb-linux/ /storage/emulated/0/adb-android-$(date '+%Y-%m-%d_%H.%M.%S')/
