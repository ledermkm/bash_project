# Bash Project: File Permissions Manager

Hello! This is my repository for my bash project for IT3038, Scripting Languages: File Permissions Manager.

The script has the purpose of analyzing files and directories as well as easily changing the owner, the group owner, and permissions of the file/directory. This is done through the available actions of the script, including changeOwner, changeGroup, changeOPerm, changeGPerm, changeOtherPerm, and changeAllPerm.

<br>

<ins>**Actions and their Usage**</ins>\
&emsp;**1. changeOwner**\
&emsp;&emsp;&emsp;Change the owner of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeOwner -f <filename/folder> -o <new_owner>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a : Action to be taken; in this case, change the ownership.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-o <new_owner> : Specify the new owner. The given owner must already exist.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.\
<br>
&emsp;**2. changeGroup**\
&emsp;&emsp;&emsp;Change the group owner of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeOwner -f <filename/folder> -o <new_owner>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a changeGroup : Action to be taken; in this case, change the group ownership.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-o <new_owner> : Specify the new group owner. The given group must already exist.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.\
<br>
&emsp;**3. changeOPerm**\
&emsp;&emsp;&emsp;Change the owner permissions of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeOPerm -f <filename/folder> -p <new_permission>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a changeOPerm : Action to be taken; in this case, change the owner permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-p <new_permission> : Specify the new owner permission. Valid permissions include:\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"read" for read only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwrite" for read/write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rexecute" for read/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"write" for write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"wexecute" for write/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"execute" for execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwexecute" for read/write/execute,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;and "zero" for no permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.\
<br>
&emsp;**4. changeGPerm**\
&emsp;&emsp;&emsp;Change the group owner permissions of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeGPerm -f <filename/folder> -p <new_permission>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a changeGPerm : Action to be taken; in this case, change the group permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-p <new_permission> : Specify the new owner permission. Valid permissions include:\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"read" for read only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwrite" for read/write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rexecute" for read/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"write" for write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"wexecute" for write/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"execute" for execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwexecute" for read/write/execute,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;and "zero" for no permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.\
<br>
&emsp;**5. changeOtherPerm**\
&emsp;&emsp;&emsp;Change the permissions for all other users (besides owner/group owner) of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeOtherPerm -f <filename/folder> -p <new_permission>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a changeOtherPerm : Action to be taken; in this case, change the permissions for all other users (beside owner and group).\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-p <new_permission> : Specify the new owner permission. Valid permissions include:\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"read" for read only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwrite" for read/write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rexecute" for read/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"write" for write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"wexecute" for write/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"execute" for execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwexecute" for read/write/execute,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;and "zero" for no permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.\
<br>
&emsp;**6. changeAllPerm**\
&emsp;&emsp;&emsp;Change the permissions for ALL of the file/directory.\
&emsp;&emsp;&emsp;*Command Usage:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;./bash.sh -a changeAllPerm -f <filename/folder> -p <new_permission>\
&emsp;&emsp;&emsp;*Options:*\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-a changeAllPerm : Action to be taken; in this case, change the permissions for ALL.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-f <filename/folder> : Specify the file or folder (i.e., directory) you wish to make changes to. Note that if a folder is selected, changes will be done recursively.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-p <new_permission> : Specify the new owner permission. Valid permissions include:\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"read" for read only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwrite" for read/write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rexecute" for read/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"write" for write only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"wexecute" for write/execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"execute" for execute only,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"rwexecute" for read/write/execute,\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;and "zero" for no permissions.\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-h : Display this help information.
