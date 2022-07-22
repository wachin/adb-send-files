#! /bin/bash

# Run this to update the ID number of the micro SD external card into the SD card scripts

MICROSD=$(adb shell sm list-volumes public | perl -lane 'print $F[-1]')

# Assign the first filename
filename1="adb-pull-from-AndroidSD-to-Linux.sh"

if [ -w "$filename1" ]; then
	sed -i -e "s@^adb pull.*@adb pull /storage/$MICROSD/adb-SD-android/ $HOME/adb-linux-$(date '+%Y-%m-%d_%H.%M.%S')/@" $filename1
else
	echo "$filename1" is ok
	exit 1
fi


# Assign the second filename
filename2="adb-push-from-Linux-to-AndroidSD.sh"

if [ -w "$filename2" ]; then
	sed -i -e "s@^adb push.*@adb push $HOME/adb-linux/ /storage/$MICROSD/adb-SD-android-$(date '+%Y-%m-%d_%H.%M.%S')/@" $filename2
else
	echo "$filename2" is yes
	exit 1
fi

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
# How to Replace a String in a File in Bash
# Example 1: Replace File with the ‘sed’ Command
# https://linuxhint.com/replace_string_in_file_bash/
#

# print last field from line + alternative for awk
# https://unix.stackexchange.com/questions/70843/print-last-field-from-line-alternative-for-awk
# https://unix.stackexchange.com/a/70850
# Perl
# The following was contributed by mr.spuratic (https://unix.stackexchange.com/users/31352/mr-spuratic) in a comment:
# echo "foo bar baz " | perl -lane 'print $F[-1]'


# 
