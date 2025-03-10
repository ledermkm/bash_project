# Bash Project: File Permissions Manager

Hello! This is my repository for my bash project for IT3038, Scripting Languages: File Permissions Manager (i.e., bash.sh).

The script has the purpose of analyzing files and directories as well as easily changing the owner, the group owner, and permissions of the file/directory. This is done through the available actions of the script, including changeOwner, changeGroup, changeOPerm, changeGPerm, changeOtherPerm, and changeAllPerm.

<br>
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

<br>
<br>

<ins>**Testing Completed**</ins>\
**No Arguments Provided (Ask for numbers)**
- [x] Test valid file for ‘Enter the file and/or directory you wish to update:’
- [x] Test valid directory for ‘Enter the file and/or directory you wish to update:’
- [x] Test invalid file for ‘Enter the file and/or directory you wish to update:’\
&emsp;&emsp;&emsp;‘Error: $file is not a file or directory that exists. Please enter a valid file and/or directory.’\
&emsp;&emsp;&emsp;And exit
- [x] If exists\
&emsp;&emsp;&emsp;[x] Displays name\
&emsp;&emsp;&emsp;[x] Displays type\
&emsp;&emsp;&emsp;[x] Displays size\
&emsp;&emsp;&emsp;[x] Displays owner name\
&emsp;&emsp;&emsp;[x] Displays group owner name\
&emsp;&emsp;&emsp;[x] Displays permissions
- [x] Test action output:\
&emsp;&emsp;&emsp;[x] 1 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change ownership..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeOwner output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp;[x] 2 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change group ownership..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeGroup output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp;[x] 3 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change owner permissions..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeOPerm output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp;[x] 4 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change group permissions..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeGPerm output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp;[x] 5 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change permissions for all others beside owner/group..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeOtherPerm output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp; [x] 6 input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"Fetching command to change permissions for ALL..."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;changeAllPerm output\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit\
&emsp;&emsp;&emsp;[x] Invalid number input\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"$action is not a valid option. Please select a valid action's corresponding number [1-5]."\
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Exit

<br>

**If Arguments Provided**
- [x] If only action and no other arguments provided:\
&emsp;&emsp;&emsp;"Missing Arguments"
- [x] Test incorrect action: ./bash.sh -a changeTPerm -f dir -p rwexecute
- [x] Test missing action: ./bash.sh -f dir -p zero\
&emsp;&emsp;&emsp;“No action given”
- [x] Test invalid file/directory: ./bash.sh -a changeOPerm -f beep -p read
- [x] Test changing owner for file: ./bash.sh -a changeOwner -f test.txt -o klede\
&emsp;&emsp;&emsp; - [x] Reflects correctly in ‘ll’
- [x] Test changing owner for directory: ./bash.sh -a changeOwner -f dir -o klede\
&emsp;&emsp;&emsp; - [x] Reflects correctly in ‘ll’
- [x] Test missing arguments for changing owner: ./bash.sh -a changeOwner -f dir\
&emsp;&emsp;&emsp;"Error: Missing required options for changing owner."
- [x] Test changing group owner for file: ./bash.sh -a changeGroup -f test.txt -o klede\
&emsp;&emsp;&emsp;[x] Reflects correctly in ‘ll’
- [x] Test changing group owner for directory: ./bash.sh -a changeGroup -f dir -o klede\
&emsp;&emsp;&emsp;[x] Reflects correctly in ‘ll’
- [x] Test missing arguments for changing group owner: ./bash.sh -a changeGroup -f dir\
&emsp;&emsp;&emsp;"Error: Missing required options for changing group."
- [x] Test changing owner permissions for file:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeOPerm -f test.txt -p read\
&emsp;&emsp;&emsp; [x] Read/write only: ./bash.sh -a changeOPerm -f test.txt -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeOPerm -f test.txt -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeOPerm -f test.txt -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeOPerm -f test.txt -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeOPerm -f test.txt -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeOPerm -f test.txt -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeOPerm -f test.txt -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeOPerm -h
- [x] Test changing owner permissions for directory:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeOPerm -f dir -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeOPerm -f dir -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeOPerm -f dir -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeOPerm -f dir -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeOPerm -f dir -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeOPerm -f dir -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeOPerm -f dir -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeOPerm -f dir -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeOPerm -h
- [x] Test missing option (owner permissions): ./bash.sh -a changeOPerm -f dir\
&emsp;&emsp;&emsp;"Error: Missing required options for changing permissions."\
&emsp;&emsp;&emsp;[x] Test incorrect option (owner permissions): ./bash.sh -a changeOPerm -f dir -p moo\
&emsp;&emsp;&emsp;[x] Test changing group permissions for file:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeGPerm -f test.txt -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeGPerm -f test.txt -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeGPerm -f test.txt -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeGPerm -f test.txt -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeGPerm -f test.txt -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeGPerm -f test.txt -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeGPerm -f test.txt -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeGPerm -f test.txt -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeGPerm -h
- [x] Test changing group permissions for directory:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeGPerm -f dir -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeGPerm -f dir -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeGPerm -f dir -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeGPerm -f dir -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeGPerm -f dir -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeGPerm -f dir -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeGPerm -f dir -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeGPerm -f dir -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeGPerm -h
- [x] Test missing option (group permissions): ./bash.sh -a changeGPerm -f dir\
&emsp;&emsp;&emsp;[x] "Error: Missing required options for changing permissions."
- [x] Test incorrect option (group permissions): ./bash.sh -a changeGPerm -f dir -p moo
- [x] Test changing other permissions for file:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeOtherPerm -f test.txt -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeOtherPerm -f test.txt -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeOtherPerm -f test.txt -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeOtherPerm -f test.txt -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeOtherPerm -f test.txt -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeOtherPerm -f test.txt -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeOtherPerm -f test.txt -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeOtherPerm -f test.txt -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeOtherPerm -h
- [x] Test changing other permissions for directory:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeOtherPerm -f dir -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeOtherPerm -f dir -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeOtherPerm -f dir -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeOtherPerm -f dir -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeOtherPerm -f dir -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeOtherPerm -f dir -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeOtherPerm -f dir -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeOtherPerm -f dir -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeOtherPerm -h
- [x] Test missing option (other permissions): ./bash.sh -a changeOtherPerm -f dir\
&emsp;&emsp;&emsp;"Error: Missing required options for changing permissions."
- [x] Test incorrect option (other permissions): ./bash.sh -a changeOtherPerm -f dir -p moo
- [x] Test changing all permissions for file:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeAllPerm -f test.txt -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeAllPerm -f test.txt -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeAllPerm -f test.txt -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeAllPerm -f test.txt -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeAllPerm -f test.txt -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeAllPerm -f test.txt -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeAllPerm -f test.txt -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeAllPerm -f test.txt -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeAllPerm -h
- [x] Test changing all permissions for directory:\
&emsp;&emsp;&emsp;[x] Read only: ./bash.sh -a changeAllPerm -f dir -p read\
&emsp;&emsp;&emsp;[x] Read/write only: ./bash.sh -a changeAllPerm -f dir -p rwrite\
&emsp;&emsp;&emsp;[x] Read/execute only: ./bash.sh -a changeAllPerm -f dir -p rexecute\
&emsp;&emsp;&emsp;[x] Write only: ./bash.sh -a changeAllPerm -f dir -p write\
&emsp;&emsp;&emsp;[x] Write/execute only: ./bash.sh -a changeAllPerm -f dir -p wexecute\
&emsp;&emsp;&emsp;[x] Execute only: ./bash.sh -a changeAllPerm -f dir -p execute\
&emsp;&emsp;&emsp;[x] Read/write/execute: ./bash.sh -a changeAllPerm -f dir -p rwexecute\
&emsp;&emsp;&emsp;[x] Zero: ./bash.sh -a changeAllPerm -f dir -p zero\
&emsp;&emsp;&emsp;[x] Help info: ./bash.sh -a changeAllPerm -h
- [x] Test missing option (group permissions): ./bash.sh -a changeAllPerm -f dir\
&emsp;&emsp;&emsp;"Error: Missing required options for changing permissions."
- [x] Test incorrect option (group permissions): ./bash.sh -a changeAllPerm -f dir -p moo

















