#!/bin/bash

if [ "$USER" != "root" ]; then
  SUDO_CMD="sudo "
fi

echo ""
echo "FILE PERMISSIONS MANAGER"
echo ""

## Create functions to reflect each future action
function changeOwner() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeOwner -f <filename/folder> -o <new_owner>"
    echo "Options:"
    echo "  -a : Action to be taken; in this case, change the ownership."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -o <new_owner> : Specify the new owner. The given owner must already exist."
    echo "  -h : Display this help information."
}

function changeGroup() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeGroup -f <filename/folder> -o <new_owner>"
    echo "Options:"
    echo "  -a changeGroup : Action to be taken; in this case, change the group ownership."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -o <new_owner> : Specify the new group owner. The given group must already exist."
    echo "  -h : Display this help information."
}

function changeOPerm() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeOPerm -f <filename/folder> -p <new_permission>"
    echo "Options:"
    echo "  -a changeOPerm : Action to be taken; in this case, change the owner permissions."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -p <new_permission> : Specify the new owner permission. Valid permissions include:"
    echo "      "read" for read only,"
    echo "      "rwrite" for read/write only,"
    echo "      "rexecute" for read/execute only,"
    echo "      "write" for write only,"
    echo "      "wexecute" for write/execute only,"
    echo "      "execute" for execute only,"
    echo "      "rwexecute" for read/write/execute,"   
    echo "      and "zero" for no permissions."
    echo "  -h : Display this help information."
}

function changeGPerm() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeGPerm -f <filename/folder> -p <new_permission>"
    echo "Options:"
    echo "  -a changeGPerm : Action to be taken; in this case, change the group permissions."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -p <new_permission> : Specify the new group owner permission. Valid permissions include:"
    echo "      "read" for read only,"
    echo "      "rwrite" for read/write only,"
    echo "      "rexecute" for read/execute only,"
    echo "      "write" for write only,"
    echo "      "wexecute" for write/execute only,"
    echo "      "execute" for execute only,"
    echo "      "rwexecute" for read/write/execute,"   
    echo "      and "zero" for no permissions."
    echo "  -h : Display this help information."
}

function changeOtherPerm() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeOtherPerm -f <filename/folder> -p <new_permission>"
    echo "Options:"
    echo "  -a changeOtherPerm : Action to be taken; in this case, change the permissions for all other users (beside owner and group)."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -p <new_permission> : Specify the new owner permission. Valid permissions include:"
    echo "      "read" for read only,"
    echo "      "rwrite" for read/write only,"
    echo "      "rexecute" for read/execute only,"
    echo "      "write" for write only,"
    echo "      "wexecute" for write/execute only,"
    echo "      "execute" for execute only,"
    echo "      "rwexecute" for read/write/execute,"   
    echo "      and "zero" for no permissions."
    echo "  -h : Display this help information."
}

function changeAllPerm() {
    echo "Command Usage:"
    echo "    ./bash.sh -a changeAllPerm -f <filename/folder> -p <new_permission>"
    echo "Options:"
    echo "  -a changeAllPerm : Action to be taken; in this case, change the permissions for ALL."
    echo "  -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively."
    echo "  -p <new_permission> : Specify the new owner permission. Valid permissions include:"
    echo "      "read" for read only,"
    echo "      "rwrite" for read/write only,"
    echo "      "rexecute" for read/execute only,"
    echo "      "write" for write only,"
    echo "      "wexecute" for write/execute only,"
    echo "      "execute" for execute only,"
    echo "      "rwexecute" for read/write/execute,"   
    echo "      and "zero" for no permissions."
    echo "  -h : Display this help information."
}

function usage() {
    # Choose action
    echo "What action would you like to take? "
    echo "  Possible Actions:"
    echo "      1. Change Ownership"
    echo "      2. Change Group Ownership"
    echo "      3. Change Owner Permissions"
    echo "      4. Change Group Permissions"
    echo "      5. Change Permissions for All Others beside Owner/Group"
    echo "      6. Change Permissions for ALL"
    read -p "Please enter the action's corresponding number [1-6]: " action
    echo ""


    # Communicate command information
    if [ $action = 1 ]; then
        echo "Fetching command to change ownership..."
        echo ""
        changeOwner
        exit 1
    elif [ $action = 2 ]; then
        echo "Fetching command to change group ownership..."
        echo ""
        changeGroup
        exit 1
    elif [ $action = 3 ]; then
        echo "Fetching command to change owner permissions..."
        echo ""
        changeOPerm
        exit 1
    elif [ $action = 4 ]; then
        echo "Fetching command to change group permissions..."
        echo ""
        changeGPerm
        exit 1
    elif [ $action = 5 ]; then
        echo "Fetching command to change permissions for all others beside owner/group..."
        echo ""
        changeOtherPerm
        exit 1
    elif [ $action = 6 ]; then
        echo "Fetching command to change permissions for ALL..."
        echo ""
        changeAllPerm
        exit 1
    else
        echo "$action is not a valid option. Please select a valid action's corresponding number [1-5]."
        exit 1
    fi
}


# IF NO ARGUMENTS ARE PROVIDED
if [[ $# = 0 ]]; then
    read -p "Enter the file and/or directory you wish to update: " file

    # Check if file or directory exists
    if [[ -f "$file" ]]; then
        echo "The file $file exists."
    elif [[ -d "$file" ]]; then
        echo "The directory $file exists."
    else
        echo "Error: $file is not a file or directory that exists. Please enter a valid file and/or directory."
        exit 1
    fi

    echo ""

    # File or directory information
    echo "File and/or Directory Information:"
    echo "Name: " $(stat -c %n $file)
    echo "Type: " $(stat -c %F $file)
    echo "Size: " $(stat -c %s $file)
    echo ""

    echo "Current Permissions:"
    echo "Owner Name: " $(stat -c %U $file)
    echo "Group Owner Name: " $(stat -c %G $file)
    echo "Permissions: " $(stat --format="%A" $file)
    echo ""


    # Choose action
    echo "What action would you like to take? "
    echo "  Possible Actions:"
    echo "      1. Change Ownership"
    echo "      2. Change Group Ownership"
    echo "      3. Change Owner Permissions"
    echo "      4. Change Group Permissions"
    echo "      5. Change Permissions for All Others beside Owner/Group"
    echo "      6. Change Permissions for ALL"
    read -p "Please enter the action's corresponding number [1-6]: " action
    echo ""


    # Communicate command information
    if [ $action = 1 ]; then
        echo "Fetching command to change ownership..."
        echo ""
        changeOwner
        exit 1
    elif [ $action = 2 ]; then
        echo "Fetching command to change group ownership..."
        echo ""
        changeGroup
        exit 1
    elif [ $action = 3 ]; then
        echo "Fetching command to change owner permissions..."
        echo ""
        changeOPerm
        exit 1
    elif [ $action = 4 ]; then
        echo "Fetching command to change group permissions..."
        echo ""
        changeGPerm
        exit 1
    elif [ $action = 5 ]; then
        echo "Fetching command to change permissions for all others beside owner/group..."
        echo ""
        changeOtherPerm
        exit 1
    elif [ $action = 6 ]; then
        echo "Fetching command to change permissions for ALL..."
        echo ""
        changeAllPerm
        exit 1
    else
        echo "$action is not a valid option. Please select a valid action's corresponding number [1-5]."
        exit 1
    fi

# IF ARGUMENTS ARE PROVIDED
else

    echo "Processing command..."
    echo ""

    # Initialize variables
    action=""
    filename_folder=""
    new_owner=""
    new_permission=""


    while getopts ":a:f:o:p:h" opt; do
        case $opt in
            a) action=$OPTARG
                ;;
            f) filename_folder=$OPTARG
                ;;
            o) new_owner=$OPTARG
                ;;
            p) new_permission=$OPTARG
                ;;
            h) echo "Command Usage:"
                usage
                ;;
            \?) echo "Invalid option: -$OPTARG"
                exit 1
                ;;
            :) echo "Option -$OPTARG requires an argument."
                exit 1
                ;;
        esac
    done


    # Check if any required switches are missing
    if [[ -z $action ]]; then
        echo "Error: No action given."
        exit 1
    elif [[ ($action = "changeOwner" && -z $filename_folder) || ($action = "changeOwner" && -z $new_owner) ]]; then
        echo "Error: Missing required options for changing owner."
        echo ""
        # display usage and exit
        changeOwner
        exit 1
    elif [[ ($action = "changeGroup" && -z $filename_folder) || ($action = "changeGroup" && -z $new_owner) ]]; then
        echo "Error: Missing required options for changing group."
        echo ""
        # display usage and exit
        changeGroup
        exit 1
    elif [[ ($action = "changeOPerm" && -z $filename_folder) || ($action = "changeOPerm" && -z $new_permission) ]]; then
        echo "Error: Missing required options for changing permissions."
        echo ""
        # display usage and exit
        changeOPerm
        exit 1
    elif [[ ($action = "changeGPerm" && -z $filename_folder) || ($action = "changeGPerm" && -z $new_permission) ]]; then
        echo "Error: Missing required options for changing permissions."
        echo ""
        # display usage and exit
        changeGPerm
        exit 1
    elif [[ ($action = "changeOtherPerm" && -z $filename_folder) || ($action = "changeOtherPerm" && -z $new_permission) ]]; then
        echo "Error: Missing required options for changing permissions."
        echo ""
        # display usage and exit
        changeOtherPerm
        exit 1
    elif [[ ($action = "changeAllPerm" && -z $filename_folder) || ($action = "changeAllPerm" && -z $new_permission) ]]; then
        echo "Error: Missing required options for changing permissions."
        echo ""
        # display usage and exit
        changeOtherPerm
        exit 1
    else
        echo "All required switches provided."
        echo ""
    fi


    # Check if file or directory exists
    if [[ -f "$filename_folder" ]]; then
        echo "The file $filename_folder exists."
    elif [[ -d "$filename_folder" ]]; then
        echo "The directory $filename_folder exists."
    else
        echo "Error: $filename_folder is not a file or directory that exists. Please enter a valid file and/or directory."
        exit 1
    fi


    # Verify that all required switches are provided

    if [[ "$@" =~ ^-a\ changeOwner\ -f\ ([^[:space:]]+)\ -o\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing owner..."
        echo ""
    elif [[ "$@" =~ ^-a\ changeGroup\ -f\ ([^[:space:]]+)\ -o\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing group owner..."
        echo ""
    elif [[ "$@" =~ ^-a\ changeOPerm\ -f\ ([^[:space:]]+)\ -p\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing owner permissions..."
        echo ""
    elif [[ "$@" =~ ^-a\ changeGPerm\ -f\ ([^[:space:]]+)\ -p\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing group permissions..."
        echo ""
    elif [[ "$@" =~ ^-a\ changeOtherPerm\ -f\ ([^[:space:]]+)\ -p\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing permissions for all others beside owner and group..."
        echo ""
    elif [[ "$@" =~ ^-a\ changeAllPerm\ -f\ ([^[:space:]]+)\ -p\ ([^[:space:]]+)$ ]]; then
        echo ""
        echo "Changing permissions for ALL..."
        echo ""
    else
        echo "Invalid action. Exiting."
    fi


    # Perform the selected action based on the user input
    # Change owner
    if [[ $action = "changeOwner" ]]; then
        if id $new_owner >/dev/null 2>&1; then
            chown $new_owner $filename_folder
            echo ""
            echo "COMPLETED"
            echo "$new_owner is now the owner of $filename_folder."
        else
            echo "User is not found. Please enter a valid user."
        fi
    
    # Change group owner
    elif [[ $action = "changeGroup" ]]; then
        if getent group "$new_owner" &>/dev/null 2>&1; then
            chown :$new_owner $filename_folder
            echo ""
            echo "COMPLETED"
            echo "$new_owner is now the group owner of $filename_folder."
        else
            echo "Group is not found. Please enter a valid group."
        fi

    # Change owner permissions
    elif [[ $action = "changeOPerm" ]]; then
        # Change permissions of file
        if [[ -f "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod u=r $filename_folder
                echo "The owner now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod u=rw $filename_folder
                echo "The owner now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod u=rx $filename_folder
                echo "The owner now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod u=w $filename_folder
                echo "The owner now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod u=wx $filename_folder
                echo "The owner now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod u=x $filename_folder
                echo "The owner now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod u=rwx $filename_folder
                echo "The owner now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod u= $filename_folder
                echo "The owner now has no permissions only for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        # Change permissions of folder/directory
        elif [[ -d "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod -R u=r $filename_folder
                echo "The owner now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod -R u=rw $filename_folder
                echo "The owner now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod -R u=rx $filename_folder
                echo "The owner now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod -R u=w $filename_folder
                echo "The owner now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod -R u=wx $filename_folder
                echo "The owner now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod -R u=x $filename_folder
                echo "The owner now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod -R u=rwx $filename_folder
                echo "The owner now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod -R u= $filename_folder
                echo "The owner now has no permissions only for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        fi


    # Change group
    elif [[ $action = "changeGPerm" ]]; then
        # Change permissions of file
        if [[ -f "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod g=r $filename_folder
                echo "The group now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod g=rw $filename_folder
                echo "The group now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod g=rx $filename_folder
                echo "The group now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod g=w $filename_folder
                echo "The group now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod g=wx $filename_folder
                echo "The group now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod g=x $filename_folder
                echo "The group now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod g=rwx $filename_folder
                echo "The group now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod g= $filename_folder
                echo "The group now has no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        # Change permissions of folder/directory
        elif [[ -d "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod -R g=r $filename_folder
                echo "The group now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod -R g=rw $filename_folder
                echo "The group now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod -R g=rx $filename_folder
                echo "The group now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod -R g=w $filename_folder
                echo "The group now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod -R g=wx $filename_folder
                echo "The group now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod -R g=x $filename_folder
                echo "The group now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod -R g=rwx $filename_folder
                echo "The group now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod -R g= $filename_folder
                echo "The group now has no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        fi


    # Change permissions of all other users
    elif [[ $action = "changeOtherPerm" ]]; then
        # Change permissions of file
        if [[ -f "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod o=r $filename_folder
                echo "All other users (beside owner and group) now have read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod o=rw $filename_folder
                echo "All other users (beside owner and group) now have read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod o=rx $filename_folder
                echo "All other users (beside owner and group) now have read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod o=w $filename_folder
                echo "All other users (beside owner and group) now have write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod o=wx $filename_folder
                echo "All other users (beside owner and group) now have write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod o=x $filename_folder
                echo "All other users (beside owner and group) now have execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod o=rwx $filename_folder
                echo "All other users (beside owner and group) now have read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod o= $filename_folder
                echo "All other users (beside owner and group) now have no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        # Change permissions of folder/directory
        elif [[ -d "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod -R o=r $filename_folder
                echo "All other users (beside owner and group) now have read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod -R o=rw $filename_folder
                echo "All other users (beside owner and group) now have read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod -R o=rx $filename_folder
                echo "All other users (beside owner and group) now have read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod -R o=w $filename_folder
                echo "All other users (beside owner and group) now have write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod -R o=wx $filename_folder
                echo "All other users (beside owner and group) now have write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod -R o=x $filename_folder
                echo "All other users (beside owner and group) now have execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod -R o=rwx $filename_folder
                echo "All other users (beside owner and group) now have read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod -R o= $filename_folder
                echo "All other users (beside owner and group) now have no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        fi

    # Change permissions of ALL
    elif [[ $action = "changeAllPerm" ]]; then
        # Change permissions of file
        if [[ -f "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod a=r $filename_folder
                echo "Everyone now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod a=rw $filename_folder
                echo "Everyone now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod a=rx $filename_folder
                echo "Everyone now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod a=w $filename_folder
                echo "Everyone now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod a=wx $filename_folder
                echo "Everyone now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod a=x $filename_folder
                echo "Everyone now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod a=rwx $filename_folder
                echo "Everyone now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod a= $filename_folder
                echo "Everyone now has no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        # Change permissions of folder/directory
        elif [[ -d "$filename_folder" ]]; then
            if [[ $new_permission = "read" ]]; then
                echo "COMPLETED."
                chmod -R a=r $filename_folder
                echo "Everyone now has read permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwrite" ]]; then
                echo "COMPLETED."
                chmod -R a=rw $filename_folder
                echo "Everyone now has read and write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rexecute" ]]; then
                echo "COMPLETED."
                chmod -R a=rx $filename_folder
                echo "Everyone now has read and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "write" ]]; then
                echo "COMPLETED."
                chmod -R a=w $filename_folder
                echo "Everyone now has write permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "wexecute" ]]; then
                echo "COMPLETED."
                chmod -R a=wx $filename_folder
                echo "Everyone now has write and execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "execute" ]]; then
                echo "COMPLETED."
                chmod -R a=x $filename_folder
                echo "Everyone now has execute permissions only for $filename_folder."
                echo ""
            elif [[ $new_permission = "rwexecute" ]]; then
                echo "COMPLETED."
                chmod -R a=rwx $filename_folder
                echo "Everyone now has read, write, and execute permissions for $filename_folder."
                echo ""
            elif [[ $new_permission = "zero" ]]; then
                echo "COMPLETED."
                chmod -R a= $filename_folder
                echo "Everyone now has no permissions for $filename_folder."
                echo ""
            else
                echo "Invalid permission. Exiting."
            fi
        else
            echo "Invalid command. Exiting."
            echo ""
            exit 0
        fi
    fi
fi
