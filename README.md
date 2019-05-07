# SETUP
My .vimrc file set up for working with python. This repo is made for me so I can copy it whenever I go to another server or computer or whatever, but feel free to copy it. It's pretty basic.
Add the .vimrc file to your home dir. After that, follow the steps below.

```bash
sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim
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
