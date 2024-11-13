Linux cmds

man - Shows the manual
Date - Gives date info
Cal - Gives the Calender
Cal -y - Gives the cal info for the whole year
echo - simply reads the cmdstouch - creates empty files
1s - list out contents
1s -l will list the contents in long format
ls -a - Displays hidden files and folders
df -h - shows the disk space in human readable format.
Standard Input < / Standard output >
Cat - Used to Read/Write/Concatnate - (combining) multiple files
mkdir - this will create empty directories/folders
cd - is used to change/move to different directories
rm - to delete file
rmdir - to delete empty folders
rm -rf - will delete files and folders explicitly
rm -ri - will ask youy permissions beforer deleting
rm -rf * will delete everything
cd ..
pwd - print working directory
touch file.txt..
Brace Expansion{} - IF we want to create a chain of files we use brace expansion.
touch file{1..100}
mkdir - this will create empty directories/folders
mkdir sai{1..100}
cp - is used to copy files from one location to another location.
mv - move helps us to move files/folders and also to rename files and folders
netstat -ntpl
EDITORS
vi
vim
nano
find . -name "myFile.txt"
chmod 400
sudo
sudo yum -y install git
sudo git clone <url>
sudo yum -y install httpd
sudo yum -y install java 1.8*
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
sudo systemctl restart httpd
chmod 400
scp -i .\s.pem .\s.pem ec2-user@<Public IPv4 address>:~
sudo su -shift to root user
useradd -its creat use in linux
passwd -d -its delete user password
passwd <username> its creat password
sudo su -<username) its simple shift to user
ssh-keygen
"authorized_keys"
chmod 700 -exgt file
Ctrl + a move to the beginning of the line
Ctrl + e move to the end of the line
Ctrl + k Kill the text from the current cursor position to the end of the line.
Ctrl + u Kill the text from the current cursor position to the beginning of the line
Ctrl + w Kill the word behind the current cursor position
Alt + b move backward one word
Alt + f move forward one word
Ctrl + Alt + e shell expand line
Ctrl + y Yank the most recently killed text back into the buffer at the cursor.
Alt + y
Rotate through killed text. You can only do this if the prior command is Ctrl + y or
Alt + y
Ctrl + r search the history backwards
Ctrl + p previous command in history
Ctrl + n next command in history
Ctrl + g quit history searching mode
Alt + . use the last word of the previous command
repeat to get the last word of the previous + 1 command
Alt + n Alt + . use the nth word of the previous command
!! + Return execute the last command again (useful when you forgot sudo: sudo !!)
Ctrl + c Stop the current job
Ctrl + z Suspend the current job (send a SIGTSTP signal)
Ctrl + L clear screen
pstree -p To list the parent and child process 
ps -ef (ps command lists all the running processes along with their details such as the UID, PID, PPID, etc)
ps -fu <username> (command in Linux is used to display information about running processes of specific user)
