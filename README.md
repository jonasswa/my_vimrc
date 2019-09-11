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

and finally:

```Bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
```

.. and you're good to go

Some key bindings to get you started:

|Command		|Key				|
|-----------------------|-------------------------------|
|SPLIT SCREEN		|<kbd>ctrl</kbd>+<kbd>w</kbd> + <kbd>v</kbd>			|
|TRAVERSE SPLITS	|<kbd>ctrl</kbd>+<kbd>w</kbd>+<kbd>Up</kbd> or <kbd>ctrl</kbd>+<kbd>w</kbd>+<kbd>Left</kbd> or ...|
|VERTICAL SPLIT		|:sp				|
|CLOSE			|<kbd>ctrl</kbd>+<kbd>w</kbd> + <kbd>q</kbd>			|
|TOGGLE SIDEBAR		|<kbd>ctrl</kbd>+<kbd>n</kbd>				|
|REDO			|<kbd>ctrl</kbd>+<kbd>R</kbd>				|
|UNDO			|<kbd>u</kbd>				|
|MARK			|<kbd>v</kbd>				|
|MARK ROW		|<kbd>shift</kbd>+<kbd>v</kbd>			|
|COPY			|<kbd>y</kbd>				|
|DELETE/CUT		|<kbd>d</kbd>				|
|PASTE			|<kbd>p</kbd>				|
|TOGGLE fzf		|<kbd>ctrl</kbd>+<kbd>f</kbd>				|
|SKIP 5 ROWS		|<kbd>ctrl</kbd>+<kbd>Up</kbd> or <kbd>ctrl</kbd>+<kbd>Down</kbd>		|
|SEARCH FORW.  		|/*pattern*			|
|SEARCH BACKW  		|?*pattern*			|
|NEXT IN SEARCH		|<kbd>n</kbd> or <kbd>N</kbd>				|
|INDENT SELECTION	|<kbd><</kbd> or <kbd>></kbd>				|
|MORE VIEWPORT UP	|<kbd>ctrl</kbd>+<kbd>e</kbd>				|
|MORE VIEWPORT DOWN	|<kbd>ctrl</kbd>+<kbd>y</kbd>				|
|EXPAND SNIPPETS	|<kbd>ctrl</kbd>+<kbd>j</kbd>				|
|SNIPPET FORWARD	|<kbd>ctrl</kbd>+<kbd>b</kbd>				|
|SNIPPET BACKWARD	|<kbd>ctrl</kbd>+<kbd>z</kbd>				|
|SAVE			|:w				|
|QUIT			|:q				|

**To coment multiple lines, do the following:**

<kbd>CTRL</kbd>+<kbd>v</kbd> - Activate visual block

<em>Mark the rows you want to comment out using the arrow keys</em>

<kbd>SHIFT</kbd>+<kbd>i</kbd> - Activate insert mode

<kbd>#</kbd> - Insert #

<kbd>ESC</kbd> <kbd>ESC</kbd> - Exit insert, and visual mode (apply)
