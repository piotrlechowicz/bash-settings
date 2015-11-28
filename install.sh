#!/bin/bash

# get current directory
location=$(pwd)
echo $location

files_to_add=(".vimrc.vim" ".bash_bindings" ".inputrc")
destination_files=(".vimrc" ".bash_profile" ".inputrc")
echo ${HOME}

# loop thorugh all files
# get nr of elementes
indices=${!files_to_add[*]} 
for index in $indices; do
	echo ${files_to_add[$index]}
	echo ${destination_files[$index]}
done

# check if files exists
#if [ -f ]
