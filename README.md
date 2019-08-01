# setup_files
Jason Sinn's collection of setup files for a new machine. Work in progress, but currently contains just dotfiles.  

## Theme

setup: **ElementaryOS**
- **GTK Theme**: macOS-5.0
- **Icons**: Flat-Remix-Blue
- **Cursor**: elementary
- **Window Controls - Layout**: OS X
- **Font**: Helvetica Neue

setup: **Gnome-Ubuntu**
- **Theme**: Materia-dark (including gnome-shell)
- **Icons**: Papirus-dark
- **Dash**: Dash-to-Dock
- Drop down terminal
- **Conky**: https://github.com/addy-dclxvi/conky-theme-collections
- **Transparency**: ~20%

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
