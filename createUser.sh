#! /bin/sh
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " username
	read -s -p "Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
        success="User has been added to system!"
        Failed="Failed to add a user!"
		[ $? -eq 0 ] && echo $success  || echo $Failed
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi
