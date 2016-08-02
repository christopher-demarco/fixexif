#!/bin/bash
set -e

FILEPATH=$1
FILENAME=$(basename $1)

# Match the date
_d='^[12][0-9]{3}'
_d=$_d'((-[0-9]{2})?){2}'

DATE=$(echo $FILENAME | egrep -o $_d)
echo $DATE

# generate the new date
echo $DATE | grep -c '-'



# touch the file

# set its exif

