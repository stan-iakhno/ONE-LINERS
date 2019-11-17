#!/bin/sh

#You can use for this:
 
grep -wFf list.txt DataTable.txt > newTable.txt

#Where: -w matches words.
#       -f gets the patterns from the file list.txt.
#       -F compares the strings as such, not as possible regular expressions.
