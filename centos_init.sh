#!/bin/bash

update_app_list()
{
	yum update
}

install_git()
{
	yum install git -y
}

install_zsh()
{
	yum install zsh -y
}

install_curl()
{
	yum install curl -y
}

install_vim()
{
	yum install vim -y
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
