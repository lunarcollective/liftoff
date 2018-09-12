# liftoff 🚀
New Laptop Setup Script

## Automated

1. `git clone git@github.com:lunarcollective/liftoff.git`
2. `./liftoff`

## Manual

1. Login to Github
2. Install Home-brew
    1. ` /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
3. Install Home-brew Cask
    1. ` brew tap caskroom/cask`
    2. ` brew install brew-cask`
4. Run the install script 
    1. ` curl https://raw.githubusercontent.com/lunarcollective/liftoff/master/setup.rb | ruby`
5. Setup your dot files
6. Install ZSH
    1. ` sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)”`
7. Install RVM
8. Install Ruby
9. Install magic wormhole
    1. ` pip install —user magic-wormhole`
    2. ` alias wormhole=‘~/Library/Python/2.7/bin/wormhole`
10. Setup SSH Keys
