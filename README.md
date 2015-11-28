# bash-settings
### Settings for bash shell - using vim keymap

####1. Overview

This repository contains files which are used to configure bash that it uses vim key bindings.
Due to the problems with tabulation in python interpreter they don't switch key bindings in it.

####2. Installation of vim

Instalation of vim in ubuntu

> `$ sudo apt-get install vim`

Clone the repository and source this files inside yours `.inputrc`, `.vimrc` and `.bashrc`.

####3. Add .vimrc.vim

In yours `~/.bashrc` add the following line <br />
>	`so: <path-to-repo>/.vimrc.vim` <br />

where `<path-to-repo>` is path where you cloned the repository

####4. Add .bash_binding

In yours `~/.bash_profile` or `.bashrc` file add the following line: <br />
> `source <path-to-repo>/.bash_binding` <br />

####5. Add .inputrc

In yours `~/.inputrc` file add the following line: <br />
> `$include <path-to-repo>/.inputrc` <br />

