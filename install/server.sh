source ~/dotfiles/common/functions.sh

# # docker
# if which docker &> /dev/null; then
# 	msg_checking "docker"
# else
# 	msg_install "docker" "brew install docker"
# 	brew install docker
# 	ok "OK"
# fi
#
# # docker-compose
# if which docker-compose &> /dev/null; then
# 	msg_checking "docker-compose"
# else
# 	msg_install "docker-compose" "brew install docker-compose"
# 	brew install docker-compose
# 	ok "OK"
# fi
#
# # docker-machine
# if which docker-machine &> /dev/null; then
# 	msg_checking "docker-machine"
# else
# 	msg_install "docker-machine" "brew install docker-machine"
# 	brew install docker-machine
# 	ok "OK"
# fi


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
