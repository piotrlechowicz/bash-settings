#!/bin/bash

# get current directory
location=$(dirname $0)
echo $location
# files which have to be added
files_to_add=(".vimrc.vim" ".bash_bindings" ".inputrc")
#destination_files=(".vimrc" ".bash_profile" ".inputrc")
destination_files=("a" "b" "c")
#home=${HOME}
home=$location

# loop thorugh all files
# get nr of elementes
indices=${!files_to_add[*]} 

for index in $indices; do

	destination="$home/${destination_files[$index]}"
	echo $destination

	# check if file exists
    if [ -f "$destination_file" ]; then
		# append to it correct path
		echo "exist"
	else echo "else";
		# create file
		touch $destination
	fi

	echo ${files_to_add[$index]}
	echo ${destination_files[$index]}
done

# check if files exists
#if [ -f ]
