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
    exit
elif [ ! -f $1 ]
then
    echo 'notOK'
    exit
elif [ $1 != '*.csv']
then
    echo 'notOK'
else
    echo 'OK'
    echo "Creating a space delimited version of $1 ..."
    cat $1 | tr  "," " " >>../Results/$(basename "$1" .csv).txt
    echo "Done!" 
    
fi    
