cd ~

for i in .tmux.conf .vimperatorrc .vimrc .zsh_profile .zshrc
do
	ln -s dotfiles/$i $i
done

ln -s dotfiles/.hammerspoon .

git config --global core.excludesfile ~/dotfiles/global.gitignore

brew install ack tmux tree vim watchman reattach-to-user-namespace ncdu
brew cask install transmission vlc anki hammerspoon mactex

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

chsh -s /bin/zsh 

git config --global user.name "Lawrence Forooghian"
git config --global user.email "lawrence.forooghian@gmail.com"

vim -c BundleInstall

cd .vim/bundle/command-t/ruby/command-t/ext/command-t
/usr/local/bin/ruby extconf.rb
make install