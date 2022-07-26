#!/bin/bash -e

#
# Running this update the launcher .desktop with the current path to open clex terminal file manager
#

APPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -w "$APPDIR"/adb-send-files.desktop ]; then
	sed -i "s@USERX@$APPDIR@g" "$APPDIR"/adb-send-files.desktop
else
	echo "$APPDIR"/adb-send-files.desktop is ok
	exit 1
fi	



# 
# Based in the Zotero launcher
# https://www.zotero.org/
#
#

