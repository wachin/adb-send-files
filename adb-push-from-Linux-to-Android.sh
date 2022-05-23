#! /bin/bash

adb push $HOME/adb-linux/ /sdcard/adb-android-$(date '+%Y-%m-%d_%H.%M.%S')/


### Encontré bastante información de que en vez de poner toda la ruta de la memoria interna
### vista desde Total Commander App, se puede poner /sdcard y funciona
### adb push $HOME/adb-linux/ /storage/emulated/0/adb-android-$(date '+%Y-%m-%d_%H.%M.%S')/
