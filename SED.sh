SED is a powerful text stream editor. Can do insertion, deletion, search and replace(substitution).

Syntax:
sed OPTIONS... [SCRIPT] [INPUTFILE...] 

Example:
Consider the below text file as an input.

$cat > geekfile.txt
unix is great os. unix is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
Sample Commands

REPLACING OR SUBSTITUTING STRING : Sed command is mostly used to replace the text in a file.
COMMAND:$sed 's/unix/linux/' geekfile.txt


OUTPUT :
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
Here the “s” specifies the substitution operation.


REPLACING THE NTH OCCURRENCE OF A PATTERN IN A LINE :
COMMAND:$sed 's/unix/linux/2' geekfile.txt
Output:

unix is great os. linux is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.linux is a multiuser os.Learn unix .unix is a powerful.




PRINTING ONLY THE REPLACED LINES : 
$sed -n 's/unix/linux/p' geekfile.txt
Output:

linux is great os. unix is opensource. unix is free os.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
If you use -n alone without /p, then the sed does not print anything.

Replacing string on a range of lines : You can specify a range of line numbers to the sed command for replacing a string.
COMMAND:$sed '1,3 s/unix/linux/' geekfile.txt
Output:

linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
Here the sed command replaces the lines with range from 1 to 3. 


Deleting lines from a particular file : SED command can also be used for deleting lines from a particular file.
 SED command is used for performing deletion operation without even opening the file
Examples:
1. To Delete a particular line 
Example:
$ sed '5d' filename.txt

2. To Delete line from range x to y
Example:
$ sed '3,6d' filename.txt

