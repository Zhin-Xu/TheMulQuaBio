#!/bin/bash
if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
    echo 'not OK'
    exit
if [ ! -f $1 ] || [ ! -f $2 ] || [ ! -f $3 ]
then
    echo 'not OK'
    exit
else
    echo 'OK'
    cat $1 > $3
    cat $2 >> $3
    echo "Merged File is"
    cat $3
fi