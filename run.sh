#!/bin/bash 

###################################################################
#Script Name	:                                                                                              
#Description	:                                                                                 
#Args           	:                                                                                           
#Author       	:Aaron Kili Kisinga                                                
#Email         	:aaronkilik@gmail.com                                           
###################################################################


autoscan

mv configure.scan configure.ac

aclocal

autoconf

automake --add-missing

./configure

make dist

make distcheck
