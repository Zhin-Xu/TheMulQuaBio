#!/bin/bash
if [ -z $1 ]
then 
     echo "notOK"
     exit 
elif [ $1 == '*.tex']
then 
     echo "Provide the name of the file without the extension"
     exit
else 
     echo "OK"
     pdflatex $1.tex
     bibtex $1
     pdflatex $1.tex
     pdflatex $1.tex
     evince $1.pdf &
     rm -f texput.log
     mkdir -p compiled && mv $1.* compiled/ 
     find ./compiled -not -name $1.tex -not -name $1.pdf -type f -delete
     mv ./compiled/* . && rmdir compiled
     mv $1.pdf ../Results/
fi