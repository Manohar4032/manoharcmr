Syntax
The syntax for the grep command is:

grep [options] pattern [files]
Options
Option	Description
-b	Display the block number at the beginning of each line.
-c	Display the number of matched lines.
-h	Display the matched lines, but do not display the filenames.
-i	Ignore case sensitivity.
-l	Display the filenames, but do not display the matched lines.
-n	Display the matched lines and their line numbers.
-s	Silent mode.
-v	Display all lines that do NOT match.
-w	Match whole word.
Example
grep -c tech file1

example

cs2016a117@user-H110M-S2:~/mano$ cat < test1
aggarwal is girl who lives beside of my house .
aggrawal works in a company called vipro.
agrawal looks very cute and innocent.
agarawal is just 23 years old.
aggarwal enjoys her holidays with her family

cs2016a117@user-H110M-S2:~/mano$ grep -i "aggarwal" test1
aggarwal is girl who lives beside of my house .
aggarwal enjoys her holidays with her family

cs2016a117@user-H110M-S2:~/mano$ grep -c "aggarwal" test1
2

cs2016a117@user-H110M-S2:~/mano$ grep -w "agarawal" test1
agarawal is just 23 years old.

cs2016a117@user-H110M-S2:~/mano$ grep -b "agarawal" test1
128:agarawal is just 23 years old.

cs2016a117@user-H110M-S2:~/mano$ grep -l "agarawal" test1
test1


cs2016a117@user-H110M-S2:~/mano$ grep -v "agarawal" test1
aggarwal is girl who lives beside of my house .
aggrawal works in a company called vipro.
agrawal looks very cute and innocent.
aggarwal enjoys her holidays with her family

