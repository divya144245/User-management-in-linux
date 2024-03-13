#!/bin/bash

add_user(){
        echo "Enter name of user:"
        read username

        sudo useradd -m $username
        sudo passwd $username

        echo "User $username created succesfully"

}
modify_user(){
        echo "Enter name of group to create"
        read groupname

        sudo groupadd $groupname
        echo "Enter name of user to add in a group"
        read username
        sudo usermod -aG $groupname $username

        echo "user $username added to group $groupname succesfully"
}
delete_user(){
        echo "Enter name of user_account to delete"
        read username

        sudo userdel -r $username

        echo "User $username deleted succesfully"
}
# main menu

echo "which task do you want to perform"
echo "1. add user"
echo "2. modify user"
echo "3. delete user"
echo "4. Exit"

echo "Enter your choice:"
read choice

case $choice in
        1) add_user ;;
        2) modify_user ;;
        3) delete_user ;;
        4) exit ;;
        *) echo "Invalid Choice" ;;

esac

