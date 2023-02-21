#!/bin/sh
echo "First test case against the spell"
./spell test1.txt
echo "Second test case aginst file name and line numbers"
./spell -o -n test1.txt 
echo "Third test case against file name"
./spell -o  test1.txt
echo "Fourth test case against line numbers"
./spell -n  test1.txt 
echo "Fifth test case with a file that doesn't exist"
./spell test_empty_empty.txt
echo "Sixth test case to find the ispell's version"
./spell -I test1.txt
echo "Seventh test case to find version number"
./spell -V test1.txt
echo "Eight test case if the filet is empty"
./spell test_empty.txt
echo "Ninth test case to see if the filename is Case Sensitive"
./spell TEST2.TXT
echo "Tenth test case to see if the program prints the same misspelled word if it occurs multiple times in a given file"
./spell test4.txt
echo "Eleven test case to see if -h will print the menu"
./spell -h
echo "Twelveth test case to see if the program can execute multiple inputs"
./spell test1.txt test3.txt test4.txt
echo "Thirteen test case to see if the program prints numbers "
./spell test7.txt
echo "Fourteen test case to see if the program prints words that are in literal form "
./spell test4.txt
echo "Fifteen test case to see if the program prints words that based on a british dictionary "
./spell -b test8.txt
echo " Sixteen test case to check if the --dictionary=FILE works or not"
./spell --dictionary=test9.txt test8.txt
echo " Seventh test case to check if the programcan execute multiple functions and multiple inputs at a time"
./spell -o -n test3.txt test4.txt
echo " Eigtheen test case to check if thw program can check --ispell=PROGRAM or not"
./spell --ispell=PROGRAM test3.txt
echo "Nineteen test case to check if there will be a problem If the first line of the input file is empty"
./spell test11.txt
