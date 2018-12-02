#!/bin/bash
echo "Welcome, I am ready to decrypt a file/folder for you"
echo "currently I have a limitation, Place me to the same folder, 
where a file to be decrypt is present"
echo "Enter the Exact File Name with extension"
read file;
errormsg= $(gpg -d $file > rv.png 2>&1)
echo $errormsg 
echo $errormsg
echo "________"
echo $errormsg
#echo "I have decrypt the file successfully..."
#echo "Please confirm should we remove the original file. Please answer in Y or N"
#read answer
#if [ "$answer" == Y ];
#then
rm -rf $file
# echo " We have removed the file successfully..."
#else
echo "Thank You."
#fi
