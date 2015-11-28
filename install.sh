#!/usr/bin/env bash

# sript exits when command fails (to accept fail use || true)
set -o errexit		# set -e
# exit status of last command that threw non-zero exit code is returned
set -o pipefail		
# exit when script tries to use undeclared variable
set -o nounset 		# set -u
# debbuging trace
set -o xtrace 		# set -x

# get directories
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${source_dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"

dest_dir=${HOME}
#dest_dir=${source_dir}

# first argument - expression, second destination file
function append_to_file {
	expression1=$1
	dest_file1=$2
	if ! grep "$expression1" "$dest_file1"; then
		echo "${expression1}" >> "${dest_file1}"
	fi
}

############# modify .vimrc
dest_file="${dest_dir}/.vimrc"
source_file="${source_dir}/.vimrc.vim"

if [ ! -f "${dest_file}" ]; then
	touch "${dest_file}"
fi

# search and if not found append path to file from repo
expression="so ${source_file}"
append_to_file "$expression" "$dest_file"

############## modify .bash_profile
dest_file="${dest_dir}/.bash_profile"
source_file="${source_dir}/.bash_binding"

if [ ! -f "${dest_file}" ]; then
	touch "${dest_file}"
	help_file="${dest_dir}/.bashrc"

	expression="source ${dest_dir}/.bash_profile"
	append_to_file "$expression" "${help_file}"
	unset help_file
fi

expression="source ${source_file}"
append_to_file "$expression" "$dest_file"

############### modify .inputrc

dest_file="${dest_dir}/.inputrc"
source_file="${source_dir}/.inputrc"

if [ ! -f "${dest_file}" ]; then
	touch "${dest_file}"
fi

expresion="\$include ${source_file}"
append_to_file "$expression" "$dest_file"
