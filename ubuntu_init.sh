#!/bin/bash

update_app_list()
{
	apt update
}

install_git()
{
	apt install git -y
}

install_zsh()
{
	apt install zsh -y 
}

install_curl()
{
	apt install curl -y
}

install_vim()
{
	apt install vim -y
}


install_oh_my_zsh()
{
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

config_zsh()
{
	chsh -s /usr/bin/zsh
	# change theme
	sed -i "s/robbyrussell/candy/g" ~/.zshrc
	source ~/.zshrc
}
