source ~/dotfiles/common/functions.sh

# ansible
if which ansible &> /dev/null; then
	msg_checking "ansible"
else
	msg_install "ansible" "brew install ansible"
	brew install ansible
	ok "OK"
fi

# virtualbox
if which virtualbox &> /dev/null; then
	msg_checking "virtualbox"
else
	msg_install "virtualbox" "brew install virtualbox"
	brew cask install virtualbox
	ok "OK"
fi

# vagrant
if which vagrant &> /dev/null; then
	msg_checking "vagrant"
else
	msg_install "vagrant" "brew install vagrant"
	brew cask install vagrant
	ok "OK"
fi
