
# homebrew!
# you need the code CLI tools YOU FOOL.
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"


# https://rvm.io
# rvm for the rubiess
#Paul does: curl -L https://get.rvm.io | bash -s stable --ruby
#I do this one as it adds dependencies as well
\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=homebrew


# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Make sure everything is ok
brew doctor

# Install GNU core utilities (those that come with OS X are outdated)
#brew install coreutils
#echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
#brew install findutils
# Install Bash 4
#brew install bash

# Install wget with IRI support
#brew install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php
brew install php55
brew install josegonzalez/php/composer

# These two formulae didn’t work well last time I tried them:
#brew install homebrew/dupes/vim
#brew install homebrew/dupes/screen

# Install other useful binaries
#brew install ack
#brew install exiv2
brew install git
brew install imagemagick
brew install libyaml
#brew install lynx
brew install node
#brew install pigz
#brew install rename
#brew install rhino
#brew install tree
#brew install webkit2png
#brew install zopfli

#brew tap homebrew/versions
#brew install lua52

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
        brew cask install "${@}" 2> /dev/null
}

installcask dropbox
installcask google-chrome
installcask google-chrome-canary
#installcask imagealpha
#installcask imageoptim
#installcask iterm2
#installcask macvim
#installcask miro-video-converter
installcask sublime-text-3
installcask the-unarchiver
#installcask tor-browser
installcask transmission
#installcask ukelele
#installcask virtualbox
installcask vlc

# Remove outdated versions from the cellar
brew cleanup



# https://github.com/rupa/z
# z, oh how i love you
cd
git clone https://github.com/rupa/z.git
chmod +x ~/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/dronir/SpotifyControl
# Spotify Controll Script
#cd ~/code
#git clone git://github.com/dronir/SpotifyControl.git

# https://github.com/jeroenbegyn/VLCControl
# VLC Controll Script
#cd ~/code
#git clone git://github.com/jeroenbegyn/VLCControl.git


# My extra stuff (do I need sudo here?)
# Check gems are up to date without installing documentation
gem update --system --no-document
gem install guard
gem install guard-sass
gem install guard-concat
gem install guard-uglify
gem install guard-livereload



# Set symlink for Sublime Text 3
mkdir ~/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Make sure npm is installed and working
curl http://npmjs.org/install.sh | sh
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"
echo $PATH
sudo npm install -g bower
sudo npm install -g grunt-cli
sudo npm install -g yo
sudo npm install -g forever

./.osx