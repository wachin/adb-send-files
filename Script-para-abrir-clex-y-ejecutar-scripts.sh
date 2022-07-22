#!/bin/sh

gnome-terminal --tab --title="tab 1" --command="bash -c 'clex; $SHELL'"


## Requerimientos, tener instalado clex y gnome-terminal y abierta la terminal gnome
## sudo apt install clex gnome-terminal
## La primera vez que se abra clex debe configurarlo, sólo lea las instrucciones y acepte.
## Script basado en:
## How can I make a script that opens terminal windows and executes commands in them?
## https://askubuntu.com/questions/46627/how-can-i-make-a-script-that-opens-terminal-windows-and-executes-commands-in-the
## https://askubuntu.com/a/1105741/145772
# Here's a breakdown of that command above:
# gnome-terminal --tab --title="tab 1" --command="bash -c 'cd /etc; ls; $SHELL'" --tab --title="tab 2" --command="bash -c 'cd ~; ls; $SHELL'" --tab --title="tab 3" --command="bash -c 'cd ~/temp3; ls; $SHELL'"
# Nota: Ese comando abre 3 pestañas.
# gnome-terminal = open up a gnome-terminal
# --tab = open up a unique tab for what comes next
# --title="tab 1" = title this tab "tab 1"
# --command="bash -c 'cd /etc; ls; $SHELL'" = run the bash -c 'cd /etc; ls; $SHELL' command, which is a command I just made up as an example; here's # what it does:
# bash -c says it is a bash 'c'ommand
# cd /etc = 'c'hange 'd'irectory into the "/etc" path
# ls = 'l'i's't contents of this directory
# $SHELL = this cryptic tidbit is required to keep the shell open so you can work with it. If you want the shell to open, run your command, then close, simply remove this part. I, however, want the tab to stay open so I can go make programming magic. :)
# we then start back over at the --tab part to produce tab 2, then again for tab 3. Customize to your heart's content.
