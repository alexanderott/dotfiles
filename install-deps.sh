
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

# Upgrade any already-installed formula
brew upgrade

# Make sure everything is ok
brew doctor

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

## PHP and Composer
brew tap josegonzalez/homebrew-php
brew install php55
brew install josegonzalez/php/composer

# Install other useful binaries
brew install git
brew install imagemagick
brew install libyaml
brew install node

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
        brew cask install "${@}" 2> /dev/null
}

installcask dropbox
installcask google-chrome
installcask google-chrome-canary
installcask firefox
installcask cyberduck
installcask j-downloader
installcask bit-torrent-sync
#installcask imagealpha
installcask imageoptim

installcask sublime-text-3
installcask the-unarchiver
installcask transmission
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


# My extra stuff
# Check gems are up to date without installing documentation
gem update --system --no-document

# Install guard
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

# Install some node stuff
sudo npm install -g bower
sudo npm install -g grunt-cli
sudo npm install -g yo
sudo npm install -g forever
sudo npm install -g requirejs

# Set OSX Configuraiton
./.osx

echo "ALL DONE! YOU ARE NOW READY TO DEV AWAY"