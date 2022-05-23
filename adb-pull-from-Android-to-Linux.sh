#! /bin/bash

adb pull /sdcard/adb-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/

### Encontré bastante información de que en vez de poner toda la ruta de la memoria interna
### vista desde Total Commander App, se puede poner /sdcard y funciona
### adb pull /storage/emulated/0/adb-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/

