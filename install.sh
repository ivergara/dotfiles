# Terminator
sudo apt-get install terminator
mkdir $HOME/.config/terminator
ln -s ./terminator/config $HOME/.config/terminator

# Git
sudo apt-get install git

# GIT section
cp ./git/gitignore_globals $HOME/.gitignore_globals
git config --global push.default simple
git config --global core.excludesfile ~/.gitignore_globals
git config --global core.editor "vim"
git config --global user.name "Ignacio Vergara Kausel"
git config --global user.email "ivergarakausel@gmail.com"

# zsh and oh-my-zsh stuff
sudo apt-get install zsh


# Making zsh the default shell

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s zsh/.zshrc  ~/.zshrc
chsh -s /bin/zsh

# Vim
sudo apt-get install vim

mv $HOME/.vimrc ./backup/vimrc.bak
ln -s .vimrc $HOME/
mkdir $HOME/.vim/ftplugin
ln -s vim/ftplugin/* $HOME/.vim/ftplugin
vim +BuncleInstall +qall # Installing vim plugins
