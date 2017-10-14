# Vim setup 

centred on vim-go, most of this is taken and adapted slightly from 

https://unknwon.io/setup-vim-for-go-development/

## General notes

the installation of windowed (panes) apps like nerdtree requires basic navigation
between panes of information 

- use the navigation keys preceded by <CNTRL-w>:

```
<CNTRL-w>k
<CNTRL-w>h
<CNTRL-w>j
<CNTRL-w>l
```

check vim is capable for Neocomplete:

```
:echo has("lua")
```

must return 1

if it doesnt, modern ubuntu's will have vim-nox:

```
apt-get install vim-nox
```

we also need ctags for tagbar to work

```
sudo apt-get install ctags 
```

## install Go

```
cd ~/Downloads
wget https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.9.1.linux-amd64.tar.gz
```


## install Pathogen

```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## install Vim-GO

```
cd ~/.vim/bundle
git clone https://github.com/fatih/vim-go.git
```

within a vim session, build go binaries:

```
:GoInstallBinaries
```

or if there are already go binaries in your ~/go/bin directory, upgrade them

```
:GoUpgradeBinaries
```

## install Neocomplete

```
cd ~/.vim/bundle 
git clone https://github.com/Shougo/neocomplete.vim.git
```

## install colorscheme molokai

```
cd ~/.vim
mkdir colors
cd colors/
wget https://raw.githubusercontent.com/fatih/molokai/master/colors/molokai.vim
```


## install tagbar

in ~/go/

```
go get -u github.com/jstemmer/gotags
```

then back in the shell

```
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git
```

## install NerdTree

```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```

when in a nerdtree window, to create a file or directory, press 'm' for 'menu' 
and choose to create a 'node'

## install emmet
git clone https://github.com/mattn/emmet-vim.git

then to use emmet to say, insert some html:

```
html:5<cntrl-y>,
```

or 

```
>ul>li*5<cntrl-y>,
```

## install airline

```
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
```

then in vim run :Helptags to generate help tags


