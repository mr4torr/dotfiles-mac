source ~/dotfiles/common/functions.sh

# firefox
if which firefox &> /dev/null; then
	msg_checking "firefox"
else
	msg_install "firefox" "brew install firefox"
	brew cask install firefox
	ok "OK"
fi

# firefoxdeveloperedition
if which firefoxdeveloperedition &> /dev/null; then
	msg_checking "firefoxdeveloperedition"
else
	msg_install "firefoxdeveloperedition" "brew install firefoxdeveloperedition"
	brew cask install firefoxdeveloperedition
	ok "OK"
fi

# google-chrome
if which google-chrome &> /dev/null; then
	msg_checking "google-chrome"
else
	msg_install "google-chrome" "brew install google-chrome"
	brew cask install google-chrome
	ok "OK"
fi

# google-chrome
if which google-chrome &> /dev/null; then
	msg_checking "google-chrome"
else
	msg_install "google-chrome" "brew install google-chrome"
	brew cask install google-chrome
	ok "OK"
fi
