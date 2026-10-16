#!/bin/bash

check_permission() {
    local file=$1

if [ -f "$file" ]; then
echo "File exists" 
ls -l $file 
else
echo "File does not exist"
fi


}

