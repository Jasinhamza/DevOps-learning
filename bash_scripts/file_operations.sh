#!/bin/bash

write_tofile() {
    local dirname=$1
    local filename=$2
    local data=$3
   

mkdir $dirname
cd $dirname
    echo $data > $filename
    echo "$dirname and $filename created!"
}

