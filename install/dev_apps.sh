source ~/dotfiles/common/functions.sh

# imageoptim
if which imageoptim &> /dev/null; then
	msg_checking "imageoptim"
else
	msg_install "imageoptim" "brew install imageoptim"
	brew cask install imageoptim
	ok "OK"
fi

# iterm2
if which iterm2 &> /dev/null; then
	msg_checking "iterm2"
else
	msg_install "iterm2" "brew install iterm2"
	brew cask install iterm2
	ok "OK"
fi

# postman
if which postman &> /dev/null; then
	msg_checking "postman"
else
	msg_install "postman" "brew install postman"
	brew cask install postman
	ok "OK"
fi


# neovim
if which neovim &> /dev/null; then
	msg_checking "neovim"
else
	msg_install "neovim" "brew install neovim"
	brew install neovim/neovim/neovim
	ok "OK"
fi

# atom
if which atom &> /dev/null; then
	msg_checking "atom"
else
	msg_install "atom" "brew install atom"
	brew cask install atom

	apm install 80s-pastel-syntax
	apm install atom-material-ui
	apm install atom-material-syntax
	apm install atom-material-syntax-light
	apm install atom-material-syntax-dark
	apm install atom-pair
	apm install editorconfig

	g

	ok "OK"
fi

# sequel-pro
if which sequel-pro &> /dev/null; then
	msg_checking "sequel-pro"
else
	msg_install "sequel-pro" "brew install sequel-pro"
	brew cask install sequel-pro
	ok "OK"
fi

# mongohub
if which mongohub &> /dev/null; then
	msg_checking "mongohub"
else
	msg_install "mongohub" "brew install mongohub"
	brew cask install mongohub
	ok "OK"
fi
