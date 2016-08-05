# bash-settings
## Settings for bash shell - using vim keymap

###1. Overview

Configuration of vim and bash bindings. Useful indings for tmux.

###2. How to install

Clone the repository and source this files inside yours `.inputrc`, `.vimrc`, `.bashrc` and `.tmux.conf`.

#### Installation through script

Alternatively you can install it through script.<br/>

* **Installation**<br/>

Folder contains script `install.sh`. In order to use it you have to assign to it execute permission: <br />
> `$ chmod +x install.sh` <br />

And run it: <br />
> `$ ./install.sh` </br>

* **Uninstallation**<br/>

In order to uninstall do the following: <br />
> `$ chmod +x uninstall.sh` <br />
> `$ ./uninstall.sh` <br/>

###3. Installation of vim and tmux

Instalation of vim and tmux in ubuntu 14

> `$ sudo apt-get install vim` <br/>
> `$ sudo apt-get install tmux` <br/>

In fedora 23

> `$ sudo dnf install vim` <br/>
> `$ sudo dnf install tmux` <br/>

###4. Adding files manually

####4.1 Add .vimrc.vim

In yours `~/.vimrc` add the following line <br />
>	`so <path-to-repo>/.vimrc.vim` <br />

where `<path-to-repo>` is path where you cloned the repository

####4.2 Add .bash_binding

In yours `~/.bash_profile` or `.bashrc` file add the following line: <br />
> `source <path-to-repo>/.bash_binding` <br />

####4.3 Add .inputrc

In yours `~/.inputrc` file add the following line: <br />
> `$include <path-to-repo>/.inputrc` <br />

####4.4 Add .tmux.conf

Create symbolic linku to .tmux.conf <br/>
> `ln -s <path-to-repo>/.tmux.conf ~/.tmux.conf

And inside tmux you have to do: prefix + : source-file ~/.tmux.conf

###5. Credit

I did not create all the files. <br/>
The tmux.conf is based on the article placed on:<br/>
http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
