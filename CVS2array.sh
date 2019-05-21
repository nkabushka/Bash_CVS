#!/bin/bash
# Spreads out a CVS-file to an array. 
# Fields of a string are divided with ";".
# Filename is an argument. 
# USAGE: ./CVS2array.sh file.cvs

FILE=$1;
IFS=';';

while read LINE;
do 
        let column=0;
        let row=$row+1;
        for field in $LINE;
                do 
                        let column=$column+1;
                        array[$row,$column]=$field;
# For test:             echo "Array($row,$column)=$field";
                done;
done < $FILE
