# adb-send-files
Copy/Transfer files from Android to PC and from PC to Android with adb, using script running on a terminal on Linux

# Tested in

- MX Linux 21 x386 and SAMSUNG GALAXY J5 Android 6.0.1



# Requirements
Is neccesary Android 6 and above

On Linux install dependencies:

    sudo apt install git perl clex adb gnome-terminal bash

A Linux File manager configured to open scripts .sh 


# Enabling USB Debugging on the Android Device
In your Android mobile you need do like this:

https://www.embarcadero.com/starthere/xe5/mobdevsetup/android/en/enabling_usb_debugging_on_an_android_device.html 

yo need to enable USB Debugging, to each Android phone is diferent, yo need to search in Google


# Download the code
Clone this repo:

    git clone https://github.com/wachin/adb-send-files

    
# Setup to Internal Memory
You need create in your Android device in your HOME a folder called:

**adb-android**

And you need to create in your Linux OS in your HOME a folder called:

**adb-linux**


# Setup to External micro SD Memory
You need create in your Android SD device a folder called:

**adb-SD-android**

and in your Linux OS in your HOME the same above folder called:

**adb-linux**

# Connect your Android mobile to your Linux PC with the USB cable
This step is totally neccesary


# Use clex file manager to execute scripts
Open your Linux File Manager and navigate to this folder:

**adb-send-files**

If you use Thunar File Manger, right clic on:

    main-run-script.sh

and open it with bash



 In other Linux File Manager like Dolphin you give one clic and ENTER and propt if you want to execute, the same is for Caja, Nemo File Manager, and search how to do with others

now 


Then from clex select and ENTER in the script:

    adb-devices.sh

This script execute adb devices to enable connection betwen Linux and Android

Then you can send or receive files with one of the scripts:

    adb-pull-from-Android-to-Linux.sh

    adb-push-from-Linux-to-Android.sh


# Use clex filemanager to manage micro SD
You can send or receive files from micro SD with one of the scripts:

    adb-pull-from-AndroidSD-to-Linux.sh
    
    adb-push-from-Linux-to-AndroidSD.sh


God Bless


This is and idea from:

**Copiar carpeta/archivos desde Android a Linux & Linux a Android con adb (por cable USB)**  
https://facilitarelsoftwarelibre.blogspot.com/2020/05/como-copiar-carpetaarchivo-desde.html

