source ~/dotfiles/common/functions.sh

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install caskroom/cask/brew-cask
    ok "OK"
fi


# zsh
if which zsh &> /dev/null; then
	msg_checking "zsh"
else
	msg_install "zsh" "brew install zsh"
	brew install zsh
	ok "OK"
fi
