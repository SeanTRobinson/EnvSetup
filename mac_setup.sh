echo "Installing Xcode"
xcode-select --install

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew update

echo "Setting up Git"
brew install git
git config --global user.name "Sean Robinson"
git config --global user.email "Sean@SeanTRobinson.co.uk"

echo "Configuring Ruby"
echo "gem: --no-document" >> ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable
rvm -v
ruby -v
brew doctor
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
source ~/.bash_profile

echo "Installing Fish shell"
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
fish_update_completions

echo "Configuring OMF"
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

echo "Configuring Vim"
git clone https://github.com/SeanTRobinson/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "Installing Node"
brew install node
npm install -g grunt-cli
npm install -g phantomjs
npm install -g mocha

#cp .gitconfig ~/
#cp .hgrc ~/
#cp .viminfo ~/
#cp .vimrc ~/
#cp -R .vim ~/
#cp -R .atom ~/
