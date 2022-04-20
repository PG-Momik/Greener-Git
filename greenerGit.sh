#!/bin/bash

# this variable holds commit start date
NEXT="2022-04-17"

# set system date to variable date
sudo date --set=$NEXT

# navigate to directory with files
cd directory

# for loop to iterate over files
for file in *.extention
do 
# $file variable has filename
# add file 
 git add $file

# commit file, commit message  e.g., "Finished abc.php"
 git commit -m "Finished ${file}"

# increase $NEXT variable by 1 day
 NEXT=$(date +%Y-%m-%d -d "$NEXT + 1 day")

# update system date
 sudo date --set="$NEXT"

# might require sudo password, feeds password to promt
 echo password_literal | sudo -S command
done