xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew update
brew install git
git config --global user.name "Sean Robinson"
git config --global user.email "Sean@SeanTRobinson.co.uk"
echo "gem: --no-document" >> ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable
rvm -v
ruby -v
brew doctor
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
source ~/.bash_profile
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
#mkdir -p ~/.config/fish
brew install node
npm install -g grunt-cli
fish_update_completions
#echo "set -g -x fish_greeting ''" >> ~/.config/fish/config.fish
#echo "set PATH ~/Documents/Development/Android_SDK/sdk/platform-tools/ $PATH" >> ~/.config/fish/config.fish
#echo "set -g -x PATH /usr/local/bin $PATH" >> ~/.config/fish/config.fish
#cp .gitconfig ~/
#cp .hgrc ~/
#cp .viminfo ~/
#cp .vimrc ~/
#cp -R .vim ~/
#cp -R .atom ~/
