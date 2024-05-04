#!/bin/bash

# check file is dir
# block device
# char device
# if file exist
# read permission
# write permission
# execute permission

file_full_path="/home"

if[ -d $file_full_path]
then 
    echo "$file_full_path is a dir"
fi

if[ -b $file_full_path]
then 
    echo "$file_full_path is a block device"
fi

if[ -c $file_full_path]
then 
    echo "$file_full_path is a char device"
fi

if[ -r $file_full_path]
then 
    echo "$file_full_path is a read file"
fi

if[ -w $file_full_path]
then 
    echo "$file_full_path is a write file"
fi

if[ -x $file_full_path]
then 
    echo "$file_full_path is a execute file"
fi


if[ -e $file_full_path]
then 
    echo "$file_full_path is a file present"
fi