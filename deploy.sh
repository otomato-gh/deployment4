#! /bin/bash

print_title(){
	echo Deploy Srcipt
}

print_date(){
	echo Date: $(date)
}
# pass package name to function
install_package(){
	sudo apt-get install -y $1
}
apt_update(){
	sudo apt-get update
}

print_title
print_date
apt_update
install_package git
install_package apache

