#!/bin/bash
if [ -z $1 ]
then
    echo 'not OK'
    exit
if [ ! -f $1 ]
then
    echo 'not OK'
    exit
else
    echo 'OK'
    NumLines=`wc -l < $1`
    echo "The file $1 has $NumLines lines"
    echo
fi
