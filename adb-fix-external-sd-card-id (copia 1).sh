#! /bin/bash

#
# Run this to update the id of the micro SD external card
#

MICROSD=$(adb shell sm list-volumes public | awk '{print $3}')

# Assign the filename
filename1="adb-pull-from-AndroidSD-to-Linux.sh"

if [ -w "$MICROSD" ]; then
	sed -i -e "s@^adb pull.*@adb pull /storage/$MICROSD/adb-SD-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/@" $filename1
else
	echo "$MICROSD" is ok
	exit 1
fi


# How to replace a string in multiple files in linux command line
# https://stackoverflow.com/a/57656052
# Given you want to search for the string search and replace it with replace across multiple files, this is my battle-tested, one-line formula:
# grep -RiIl 'search' | xargs sed -i 's/search/replace/g'
# Quick grep explanation:
# -R - recursive search
# -i - case-insensitive
# -I - skip binary files (you want text, right?)
# -l - print a simple list as output. Needed for the other commands
# The grep output is then piped to sed (through xargs) which is used to actually replace text. The -i flag will alter the file directly. Remove it for a kind of "dry run" mode.

# Find and Replace String with sed
# https://linuxize.com/post/how-to-use-sed-to-find-and-replace-string-in-files/
# Find and Replace String with sed #
# There are several versions of sed, with some functional differences between them. macOS uses the BSD version, while most Linux distributions come with GNU sed pre-installed by default. We’ll use the GNU version.

# The general form of searching and replacing text using sed takes the following form:
# sed -i 's/SEARCH_REGEX/REPLACEMENT/g' INPUTFILE
# Copy
# -i - By default, sed writes its output to the standard output. This option tells sed to edit files in place. If an extension is supplied (ex -i.bak), a backup of the original file is created.
# s - The substitute command, probably the most used command in sed.
# / / / - Delimiter character. It can be any character but usually the slash (/) character is used.
# SEARCH_REGEX - Normal string or a regular expression to search for.
# REPLACEMENT - The replacement string.
# g - Global replacement flag. By default, sed reads the file line by line and changes only the first occurrence of the SEARCH_REGEX on a line. When the replacement flag is provided, all occurrences are replaced.
# INPUTFILE - The name of the file on which you want to run the command.
# It is a good practice to put quotes around the argument so the shell meta-characters won’t expand.

# Let’s see how we can use the sed command to search and replace text in files with some of its most commonly used options and flags.

#
# Tomado del orignal del colocador de la ruta del lanzador de Zotero para que funcione el Desktop
# https://askubuntu.com/questions/84007/find-and-replace-text-within-multiple-files
# https://askubuntu.com/a/84482
#
# How to Replace a String in a File in Bash
# Example 1: Replace File with the ‘sed’ Command
# https://linuxhint.com/replace_string_in_file_bash/
#
