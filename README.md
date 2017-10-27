# setup_files
Jason Sinn's collection of setup files for a new machine. Work in progress, but currently contains just dotfiles.  

## Screenshots
![Alt text](screenshot-1.png?raw=true)
  
## Theme

Install unity-tweak-tool:

```
sudo apt-get install unity-tweak-tool
```

Install Materia from: https://github.com/nana-4/materia-theme  

Install Paper Icons:
```
sudo add-apt-repository ppa:snwh/pulp
# update repository info
sudo apt-get update
# install icon theme
sudo apt-get install paper-icon-theme
# install cursor theme
sudo apt-get install paper-cursor-theme
# install gtk theme
sudo apt-get install paper-gtk-theme
```

Install arc-dark for firefox from: https://addons.mozilla.org/en-US/firefox/collections/horst3180/a/

## Shell
### base16 shell:
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
cd
ln -s -f ${REPO_LOC}/.bashrc
```

### Tmux
```
cd
ln -s -f ${REPO_LOC}/.tmux.conf
ln -s -f ${REPO_LOC}/.tmuxtheme
```

## Vim
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s -f ${REPO_LOC}/.vimrc
```
Important: Install powerline fonts from https://github.com/powerline/fonts
In Terminal Profile, set font to Source Code Pro (Powerline) Regular. Then open vim, run :PluginInstall  
  
Plugins:
* Vundle
* base16-vim
* nerdtree
* syntastic
* vim-airline + vim-airline-themes
* ctrlp
* vim-tmux   
