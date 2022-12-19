# Vim config

1. Get `vundle`
`$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Get `vimrc`
`$ git clone https://github.com/shuaicj/vimrc.git ~/.vim/vimrc`

3. Backup your original `~/.vimrc` file
`$ [ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak`

4. Link new `~/.vimrc` file
`$ ln -s ~/.vim/vimrc/vimrc ~/.vimrc`

5. Launch `vim` and run `:PluginInstall`

### IntelliJ IDEA settings
* `$ [ -f ~/.ideavimrc ] && mv ~/.ideavimrc ~/.ideavimrc.bak`
* `$ ln -s ~/.vim/vimrc/ideavimrc ~/.ideavimrc`
