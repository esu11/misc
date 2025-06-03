#!/bin/bash

if [[ $EUID -ne 0 ]]; then
echo "This script must be run as root" 
exit
fi

PS3='Please enter your choice: '
options=("Add User" "Delete User" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Add User")
              echo -n "Enter the username: "
              read username
              echo -n "Enter the password: "
              read -s password
              useradd -m "$username"
              echo $username:$password | chpasswd
              echo "xfce4-session" >> /home/$username/.xsession && chown $username:$username /home/$username/.xsession
              echo "User successfully added"
            break
            ;;
        "Delete User")
              echo -n "Enter the username: "
              read username
              userdel "$username"
              rm -rf /home/$username
              echo "User successfully deleted"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
