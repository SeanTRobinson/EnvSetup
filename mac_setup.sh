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

echo "Installing autojump"
brew install autojump
echo "[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish" >> ~/.config/fish/config.fish

echo "Setting up alias"
echo "alias gs 'git status'" >> ~/.config/fish/config.fish
echo "alias g 'git'" >> ~/.config/fish/config.fish
echo "alias gct 'git commit -am'" >> ~/.config/fish/config.fish
echo "alias gd 'git diff'" >> ~/.config/fish/config.fish
echo "set PATH ~/Documents/Development/Android_SDK/sdk/platform-tools/ $PATH" >> ~/.config/fish/config.fish
echo "set -g -x PATH /usr/local/bin $PATH" >> ~/.config/fish/config.fish
echo "set -g -x fish_greeting 'Welcome Sean'" >> ~/.config/fish/config.fish

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
