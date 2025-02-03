#!/bin/bash
add ()
{
    echo -e "\n--------------------------------------ADD MENU---------------------------------------"
    while true 
    do
        read -p "Enter the client's first name: " first_name
        if [[ "$first_name" =~ ^[a-zA-Z]+$ ]]
        then 
            break
        else 
            echo "Invalid input. No numbers or special characters are allowed"
            echo "Please try again!"            
        fi
    done

    while true 
    do
        read -p "Enter the client's last name: " last_name
        if [[ "$last_name" =~ ^[a-zA-Z]+$ ]]
        then 
            break 
        else 
            echo "Invalid input. No numbers or special characters are allowed"
            echo "Please try again!"            
        fi
    done  

    while true 
    do 
        read -p "Enter the client's ID: " id
        filename="${id}.txt"
        if [ -e "$filename" ]
        then
            echo "Error: ID '$id' already exists. Please use a different ID."
        else 
            break
        fi
    done 

    while true 
    do 
        read -p "Enter the client's account: " account
        if [[ "$account" =~ ^[0-9]+$ ]]
        then 
            break 
        else 
            echo "Invalid Input. Please Try Again!"
        fi
    done

    echo "$first_name $last_name $id $account" > "$filename"
    echo "***Client is added successfully***"
    main_menu

}

update ()
{
    echo -e "\n--------------------------------------UPDATE MENU---------------------------------------"
    while true 
    do 
        read -p "Enter the client's ID to update: " id
        filename="${id}.txt"
        if [[ $id == "*" ]]
        then
            main_menu
            break 
        fi
        if [ ! -e "$filename" ]
        then
            echo "Error: Client with ID '$id' does not exist. Please try again!"
            echo "Or enter '*' to go back to the main menu"
        else 
            break
        fi
    done


    while true 
    do
        read -p "Enter the clinet's new first name: " first_name
        if [[ "$first_name" =~ ^[a-zA-Z]+$ ]]
        then 
            break
        else 
            echo "Invalid input. No numbers or special characters are allowed"
            echo "Please try again!"
        fi
    done

    while true 
    do
        read -p "Enter the clinet's new last name: " last_name
        if [[ "$first_name" =~ ^[a-zA-Z]+$ ]]
        then 
            break
        else 
            echo "Invalid input. No numbers or special characters are allowed"
            echo "Please try again!"
        fi
    done
    
    read -p "Enter new ID: " id

    while true 
    do 
        read -p "Enter new account: " account
        if [[ "$account" =~ ^[0-9]+$ ]]
        then 
            break 
        else 
            echo "Invalid Input. Please Try Again!"
        fi
    done
    
    echo "$first_name $last_name $id $account" > "$filename"
    new_filename="${id}.txt"
    mv "$filename" "$new_filename"
    
    echo -e "***Client data has been updated***\n"
   
    main_menu

}

delete ()
{
    echo -e "\n--------------------------------------DELETE MENU---------------------------------------"
    
    while true 
    do 
        read -p "Enter the client's ID to delete: " id
        filename="${id}.txt"
        if [[ $id == "*" ]]
        then
            main_menu
            break 
        fi

        if [ ! -e "$filename" ]
        then
            echo "Error: Client with ID '$id' does not exist. Please try again!"
            echo "Or enter '*' to go back to the main menu"
        else 
            break
        fi
    done

    filename="${id}.txt"

    IFS=' ' read -r first_name last_name id account < "$filename"

    echo "Client Data:"
    echo "First name: $first_name"
    echo "Last name: $last_name"
    echo "ID: $id"
    echo "Account: $account"
    echo "-------------------------------------------"
    read -p "Are you sure you want to delete the file for this client? (y/n): " confirm
    if [[ $confirm == "y" || $confirm == "Y" ]]
    then 
        rm "$filename"
        echo -e "\n***Client is deleted successfully***"
    else
        echo -e "\n***Deletion cancelled***"
    fi

    main_menu
}

search ()
{
    echo -e "\n--------------------------------------SEARCH MENU---------------------------------------"
    while true 
    do 
        read -p "Enter the client's ID to search: " id
        filename="${id}.txt"
        if [[ $id == "*" ]]
        then 
            main_menu
            break 
        fi 

        if [ ! -e "$filename" ]
        then
            echo "Error: Client with ID '$id' does not exist. Please try again!"
            echo "Or enter '*' to go back to the main menu"
        else 
            break
        fi
    done
    IFS=' ' read -r first_name last_name id account < "$filename"
    echo "Client details:"
    echo "First name: $first_name"
    echo "First name: $last_name"
    echo "ID: $id"
    echo "Account: $account"
    main_menu
}

print_all()
{
    echo -e "\n--------------------------------------PRINT MENU---------------------------------------"
    client_files=(*.txt)

    if [ ${#client_files[@]} -eq 1 ] && [ "${client_files[0]}" == "*.txt" ]
    then
        echo "No client files found."
        main_menu
    fi

    echo -e "Client details :\nFirstName LastName ID Account"

    for file in "${client_files[@]}"; 
    do
        echo "------------------------------------"
        cat "$file"
    done
    main_menu
}

main_menu ()
{
    echo "--------------------------------------MAIN MENU---------------------------------------"  
    echo -e "\n Options list: "
    echo -e "(1) Add a client \n(2) Update a client data \n(3) Delete a client \n(4) Search for a client \n(5) Print all clients data\n(6) Exit"
    while true
    do 
        read -p "Chose an option: " main_menu_option
        if [[ "$main_menu_option" == [1-6] ]]
        then 
            break # Exit the loop if the input is valid 
        else 
            echo "**Invalid Input, Please retry again**"
        fi
    done

    case $main_menu_option in
        '1') add ;;
        '2') update ;;
        '3') delete ;;
        '4') search ;;
        '5') print_all ;;
        '6') exit 1;;
    esac
}

welcome ()
{
    echo "**************************************************************************************"
    echo "******************************** ODC EMBEDDED LINUX **********************************"
    echo -e "********************** Bank Database Management System Project ***********************\n"
}

welcome
main_menu

