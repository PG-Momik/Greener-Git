#!/bin/bash
NEXT="2022-04-17"
sudo date --set=$NEXT
cd directory
for file in *.extention
do 
 git add $file
 git commit -m "Finished ${file}"
 NEXT=$(date +%Y-%m-%d -d "$NEXT + 1 day")
 sudo date --set="$NEXT"
 echo password_literal | sudo -S command
done

