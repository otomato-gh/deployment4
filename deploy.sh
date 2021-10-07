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
remove_old_site(){
	if [ ! -d /var/www/html/.git ]; then
           rm -f /var/www/html/index.html
	fi
}
clone_website_code(){
	if [ ! -d /var/www/html/.git ]; then
	  	git clone https://github.com/octocat/Spoon-Knife /var/www/html/
	else
		cd /var/www/html/;
		sudo git pull https://github.com/octocat/Spoon-Knife
	fi
}

print_title
print_date
apt_update
install_package git
install_package apache2
remove_old_site
clone_website_code
