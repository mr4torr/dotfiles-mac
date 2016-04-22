source ~/dotfiles/common/functions.sh

# spotify
if which spotify &> /dev/null; then
	msg_checking "spotify"
else
	msg_install "spotify" "brew install spotify"
	brew cask install spotify
	ok "OK"
fi

# slack
if which slack &> /dev/null; then
	msg_checking "slack"
else
	msg_install "slack" "brew install slack"
	brew cask install slack
	ok "OK"
fi

# dropbox
if which dropbox &> /dev/null; then
	msg_checking "dropbox"
else
	msg_install "dropbox" "brew install dropbox"
	brew cask install dropbox
	ok "OK"
fi

# vlc
if which vlc &> /dev/null; then
	msg_checking "vlc"
else
	msg_install "vlc" "brew install vlc"
	brew cask install vlc
	ok "OK"
fi


# skype
if which skype &> /dev/null; then
	msg_checking "skype"
else
	msg_install "skype" "brew install skype"
	brew cask install skype
	ok "OK"
fi


# utorrent
if which utorrent &> /dev/null; then
	msg_checking "utorrent"
else
	msg_install "utorrent" "brew install utorrent"
	brew cask install utorrent
	ok "OK"
fi

# appcleaner
if which appcleaner &> /dev/null; then
	msg_checking "appcleaner"
else
	msg_install "appcleaner" "brew install appcleaner"
	brew cask install appcleaner
	ok "OK"
fi
