# SETUP
My .vimrc file set up for working with python. This repo is made for me so I can copy it whenever I go to another server or computer or whatever, but feel free to copy it. It's pretty basic.
Add the .vimrc file to your home dir. After that, follow the steps below.

```bash
sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim-gtk
```

Get Vundle for handling packages:

```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Launch vim and run:

```Bash
:PluginInstall
```

Finally, you should make YouCompleteMe work (need some c libraries etc.). Run the following:
```Bash
sudo apt install build-essential cmake python3-dev
```
and finally:

```Bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
```

.. and you're good to go

Some key bindings to get you started:

|Command		|Key				|
|-----------------------|-------------------------------|
|SPLIT SCREEN		|ctrl+w + v			|
|TRAVERSE SPLITS	|ctrl+w+Up or ctrl+w+Left or ...|
|CLOSE			|ctrl+w + q			|
|TOGGLE SIDEBAR		|ctrl+n				|
|REDO			|ctrl+R				|
|UNDO			|u				|
|MARK			|v				|
|MARK ROW		|shift+v			|
|COPY			|y				|
|DELETE/CUT		|d				|
|PASTE			|p				|
|TOGGLE fzf		|ctrl+f				|
|SKIP 5 ROWS		|ctrl+Up or ctrl+Down		|
|SEARCH FORW.  		|/*pattern*			|
|SEARCH BACKW  		|?*pattern*			|
|NEXT IN SEARCH		|n or N				|
|SAVE			|:w				|
|QUIT			|:q				|

