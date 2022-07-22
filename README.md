# adb-send-files
Copy/Transfer files from Android to PC and from PC to Android with adb, using script running on a terminal on Linux

This is and idea under construction from:

**Copiar carpeta/archivos desde Android a Linux & Linux a Android con adb (por cable USB)**  
https://facilitarelsoftwarelibre.blogspot.com/2020/05/como-copiar-carpetaarchivo-desde.html

# Tested in

MX Linux 21


# Requirements
Linux Dependencies:

    sudo apt install git perl clex adb gnome-terminal


# Enabling USB Debugging on an Android Device
In your Android mobile you need do like this:

https://www.embarcadero.com/starthere/xe5/mobdevsetup/android/en/enabling_usb_debugging_on_an_android_device.html 

yo need to enable USB Debugging, to each Android phone is diferent, yo need to search in Google


# Download the code
Clone this repo and enter in this path:

    git clone https://github.com/wachin/adb-send-files
    cd adb-send-files

# To use it
You need create in your Android device in your HOME a folder called:

adb-android

And you need to create in your Linux OS in your HOME a folder called:

adb-linux

# Connect your Android mobile to your Linux PC
This step is neccesary


# Use clex file manager to execute scripts
Double clic on the script:

main-run-script.sh

then first configure clex (only once is neccesary), from clex execute the script:

adb-devices.sh

This script execute adb devices to enable connection betwen Linux and Android

Then you can send or receive files with one of the scripts:

adb-pull-from-Android-to-Linux.sh
adb-push-from-Linux-to-Android.sh

if you have a micro SD external Card in your Androi Mobile you need to use this scripts:

adb-pull-from-AndroidSD-to-Linux.sh
adb-push-from-Linux-to-AndroidSD.sh


God Bless



