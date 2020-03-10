#!/bin/bash
#
# Descr : count all occurrences of the article "de" in the Dutch
# Wikipedia page of the Rijksuniveristeit Groningen
#
# Usage: ./de_count.sh FILE

# argument is the file. check if we get it.
TEXT=$1
if [ -z "$TEXT" ]
then
    echo "specify a file!"
    exit
fi
# remove spaces, remove empty lines,
# put all occurences on unique lines and count these lines
cat $TEXT | tr ' ' '\n' | sed '/^$/d' | grep -wo -i de | wc -l

