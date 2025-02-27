#!/bin/sh
# Author: fx23@imperial.ac.uk
# Script: tabtocsv.sh
# Description: substitute the tabs in the files with commas
#
# Saves the output into a .csv file
# Arguments: 1 -> tab delimited file
# Date: Oct 2023
if [ -z $1 ]
then 
    echo 'notOK'
elif [ ! -f $1 ]
then
    echo 'notOK'
elif [ $1 != '*.tsv' ]
then   
    echo 'notOK'
else
    echo "Creating a comma delimited version of $1 ..."
    cat $1 | tr -s "\t" "," >> ../Results/$(basename $1).csv
    echo "Done!" 
    echo 'OK'  
fi    
exit
