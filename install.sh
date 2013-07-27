cp ./terminator/config $HOME/.config/terminator
git clone git://github.com/robbyrussell/oh-my-zsh.git
# Fix and automate relative paths
cp .zshrc $HOME

# Making zsh the default shell
chsh -s /bin/zsh

cp .vimrc $HOME/
