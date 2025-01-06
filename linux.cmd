Linux All Commands 
[Basic Commands]
man - Shows the manual
Date - Gives date info
Cal - Gives the Calender
Cal -y - Gives the cal info for the whole year
echo - simply reads the cmdstouch - creates empty files
1s - list out contents
1s -l will list the contents in long format
ls -a - Displays hidden files and folders
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
df -h - shows the disk space in human readable format.
pstree -p To list the parent and child process 
ps -ef (ps command lists all the running processes along with their details such as the UID, PID, PPID, etc)
ps -fu <username> (command in Linux is used to display information about running processes of specific user)
netstat -ntpl

AWK COMMAND
awk '{print $2}' file_name - To see column 2 or 3
awk '{print $2,$3}' file_name - To see multiple coulumns
awk '{print $NF}' file_name - To see last column
awk '{print NR}' file_name - To see line no
awk '{print NR "- " $2}' file_name -To see line no. with -
awk -F, '{print $7}' country.txt -To get a column from CSV
awk '{if($2=="Pol"){$3="90000"} print $0}' file_name -To change the salary of Pol
awk '{if($3>40000) print $0}' file_name -To see data of users whose salary is more than 40000
awk 'length($0)>15' file_name -To see a line whose length of character is more than 15
awk '/India/ {print}' file_name -To see data of Indian users
awk 'NR==3 {print}' file_name -To see a specific line example 3rd line
awk 'NR==3,NR==5 {print}' -To see range of lines, 3 to 5th line
awk 'NF==0 {print NR}' file_name -To see which lines are empty
awk 'END {print NR}' file_name -To check no. of lines in the file
awk 'BEGIN {for(i=0;i<=10;i++) print i;}' -To use for loop in AWK command
awk 'BEGIN {while(i<10){ i++; print "Num is " i;}}' -To use while loop in AWK command

CUT COMMAND
cut -c2 file_name -To see only 2nd char
cut -c1-4 file_name -To see 1 to 4 char
cut -c2,3 file_name -To see only 2 and 4th char
cut -d: -f 3 file_name  -To see data from CSV
cut -d, -f 1- country.txt --output-delimiter="|" -To change the delimeter of output

SED COMMANDS
To show only a given line or range of lines
sed -n '1p' file_name
sed -n '1,5p' file_name
sed -n '$p' file_name
sed -n '/India/p' file_name -To see all the users from India Country
To use multiple expression in sed command
Example: If you wanna only see 2 and 5th line
sed -n -e '2p' -e '5p' file_name

sed -n -e '/India/p' -e '/Germany/p' file_name -To see all the users from India and Germany
sed -n ‘2,+4p’ file_name -To see next 4 lines from 2nd line
sed -n ‘1~2p’ file_name -To see every 2nd line from first line
sed -f ex_file file_name -To read expression from external file
sed 's/<string_to_change>/<new_string>/g' file_name -To replace a word in a file and show
To replace a word in a file and show except a given line or only in given line?
sed '5 s/<string_to_change>/<new_string>/g' file_name
sed '5! s/<string_to_change>/<new_string>/g' file_name

sed -i's/<string_to_change>/<new_string>/g' file_name -To replace a word and and edit in your file
To change salary or country of a user (Paul)?
sed '/Paul/ s/25000/35000/g' file_name
sed '/Paul/ s/India/US/g' file_name

To delete a line?
sed '1d' file_name                                    (to delete first line)
sed '1,2d' file_name
sed '$d' file_name

sed ‘/India/d’ file_name -To delete user from India country
sed '/^$/d' file_name -To delete empty line
sed 's/\t/ /g' file_name -To replace tab with space
sed -n ‘/India/ w new_file_name’ file_name -To copy output of sed command in separate file
sed '5 a new_text' file_name -To add new line after a given line no.
sed '/Paul/ a new_text' file_name -To add new line after a given string, so it will add text after Paul
sed '5 c new_text' file_name (it will add text at line 5) -To edit existing line instead of adding new line
sed '/Paul/ i new_text' file_name -To add new line before a given string, so it will add text before Paul
sed -n 'l' file_name -To see the hidden characters
sed -n 'l 50' file_name -To wrap your file content with given no. of characters
sed '3 r externalfile' file_name -To read content from a file and use in our command
To stop execution of sed command as soon as first occurance found
sed ‘/India/ q’ file_name
sed ‘5 q’ file_name  (stop execution at line 5)
sed ‘/India/ q 100’ file_name -To provide exit status for your sed command
sed '2 e date' file_name -To execute external command line date in your expression
sed '=' file_name -To see the line number in file

SED Regular Expressions

^   start of line
$   end of line
.   single character
[]  match character set
[^] exclusive Set 
*   zero or more occurance

examples:

sed -n '/^2/p' file_name
sed -n '/ia$/p' file_name

sed -n '/^S...a$/p' names -To find a 5 letter name which start with S and end with a
sed -n '/^V/p' names -To find names start with V
sed -n '/a$/p' names -To find names end with a
ls -ltr *.txt -To use wild card
To see names start with only A and C
sed -n '/[AC]/p' names
sed -n '/[AC]/p' names
sed -n '/^[A-D]/p' names -To see names start with only A to D

GREP COMMAND
grep -i "keyword" file -To ignore the upper and lower case while searching 
grep -v "keyword" file -To search everything except given pattern/keyword
grep -c "keyword" file -To print how many times (count) given keyword present in the file
grep -w "keyword" file - To search exact match of given keyword present in the file
grep -n "keyword" file -To print the line numbers of the given keyword in a file 
grep "keyword" file1 file2.. -To search the given keyword in multiple files 
grep -h "keyword" file1 file2.. -To supress file names while search a given keyword in multiple files
grep -e "keyword1" -e "keyword2" file - To search multipe keywords in a file
grep -l "keyword" file -To only print file names which matches given keywords
grep -f "keyword" file -To get the keywords/pattern from a file and match with another file 
grep "^keyword" file -To print the matching line with the given keyword
grep "keyword$" file -To print the matching line which end with the given keyword
grep -R "keyword" dirA/ - suppose we have 100 file in a directory (dirA) and we need 
egrep "key1|key2|key3" file -We can use egrep command for the multiple keyword search 
grep -q "keyword" file -If you just wanna search but dont want to print on terminal
grep -s "keyword" file -If you want to suppress error message 
