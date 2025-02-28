# Bash Project: File Permissions Manager

Hello! This is my repository for my bash project for IT3038, Scripting Languages: File Permissions Manager.

The script has the purpose of analyzing files and directories as well as easily changing the owner, the group owner, and permissions of the file/directory. This is done through the available actions of the script, including changeOwner, changeGroup, changeOPerm, changeGPerm, changeOtherPerm, and changeAllPerm.

<ins>**Actions and their Usage**</ins>\
<br>
    **1. changeOwner**\
          Change the owner of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeOwner -f <filename/folder> -o <new_owner>\
          *Options:*\
              -a : Action to be taken; in this case, change the ownership.\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -o <new_owner> : Specify the new owner. The given owner must already exist.\
              -h : Display this help information.\
<br>
    **2. changeGroup**\
          Change the group owner of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeOwner -f <filename/folder> -o <new_owner>\
          *Options:*\
              -a changeGroup : Action to be taken; in this case, change the group ownership.\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -o <new_owner> : Specify the new group owner. The given group must already exist.\
              -h : Display this help information.\
<br>
    **3. changeOPerm**\
          Change the owner permissions of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeOPerm -f <filename/folder> -p <new_permission>\
          *Options:*\
              -a changeOPerm : Action to be taken; in this case, change the owner permissions.\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -p <new_permission> : Specify the new owner permission. Valid permissions include:\
                    "read" for read only,\
                    "rwrite" for read/write only,\
                    "rexecute" for read/execute only,\
                    "write" for write only,\
                    "wexecute" for write/execute only,\
                    "execute" for execute only,\
                    "rwexecute" for read/write/execute,\
                    and "zero" for no permissions.\
              -h : Display this help information.\
<br>
    **4. changeGPerm**\
          Change the group owner permissions of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeGPerm -f <filename/folder> -p <new_permission>\
          *Options:*\
              -a changeGPerm : Action to be taken; in this case, change the group permissions.\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -p <new_permission> : Specify the new owner permission. Valid permissions include:\
                    "read" for read only,\
                    "rwrite" for read/write only,\
                    "rexecute" for read/execute only,\
                    "write" for write only,\
                    "wexecute" for write/execute only,\
                    "execute" for execute only,\
                    "rwexecute" for read/write/execute,\
                    and "zero" for no permissions.\
              -h : Display this help information.\
<br>
    **5. changeOtherPerm**\
          Change the permissions for all other users (besides owner/group owner) of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeOtherPerm -f <filename/folder> -p <new_permission>\
          *Options:*\
              -a changeOtherPerm : Action to be taken; in this case, change the permissions for all other users (beside owner and group).\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -p <new_permission> : Specify the new owner permission. Valid permissions include:\
                    "read" for read only,\
                    "rwrite" for read/write only,\
                    "rexecute" for read/execute only,\
                    "write" for write only,\
                    "wexecute" for write/execute only,\
                    "execute" for execute only,\
                    "rwexecute" for read/write/execute,\
                    and "zero" for no permissions.\
              -h : Display this help information.\
<br>
    **6. changeAllPerm**\
          Change the permissions for ALL of the file/directory.\
          *Command Usage:*\
              ./bash.sh -a changeAllPerm -f <filename/folder> -p <new_permission>\
          *Options:*\
              -a changeAllPerm : Action to be taken; in this case, change the permissions for ALL.\
              -f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
              -p <new_permission> : Specify the new owner permission. Valid permissions include:\
                    "read" for read only,\
                    "rwrite" for read/write only,\
                    "rexecute" for read/execute only,\
                    "write" for write only,\
                    "wexecute" for write/execute only,\
                    "execute" for execute only,\
                    "rwexecute" for read/write/execute,\
                    and "zero" for no permissions.\
              -h : Display this help information.
