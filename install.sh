mkdir $HOME/.config/terminator
cp ./terminator/config $HOME/.config/terminator
git clone git://github.com/robbyrussell/oh-my-zsh.git
# Fix and automate relative paths
cp .zshrc $HOME

# Making zsh the default shell
chsh -s /bin/zsh

mv $HOME/.vimrc ./backup/vimrc.bak
cp .vimrc $HOME/
mkdir $HOME/.vim/ftplugin
cp vim/ftplugin/* $HOME/.vim/ftplugin
vim +BuncleInstall +qall # Installing vim plugins

# GIT section
mv ./git/gitignore_globals $HOME/.gitignore_globals
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor "vim"
git config --global user.name "Ignacio Vergara Kausel"
git config --global user.email "ivergarakausel@gmail.com"
