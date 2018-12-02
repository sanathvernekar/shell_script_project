#! /usr/bin/env bash
#Project : To familiarize with Linux Commands
#Author :-sanath vernekar
#Procedure to use in Linux Terminal
#chmod +x file path along with file name 
#ex: chmod +x /home/sanath/linux_commands.sh
#then directly execute this file by entering ./filename
#ex:./linux_commands.sh
while true
do
		
		echo "==========================================================="
        echo "                          MENU                             "
		echo "==========================================================="
		echo -e "\033[32m" #Green Colour
        echo "1.To know about Your file systems"
        echo "2.To Encrypt and Decrypt Your Files"
        echo "3.exit"
        echo " enter your choice"
        read main_choice;
		clear
        case "$main_choice" in

                1)  echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
					echo "            File Menu            "
					echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
					echo "1.Your Current Working Directory"
					echo "2.List all the  files in this directory"
					echo "3.To view the Access mode of the files and their Permissions"
					echo "4.To view the TREE view (each and every files present in each sub folders)"
					echo "5.To view all the files in Tabular View"
					echo "6.To view all the hidden Folders"
					read file_choice;
					clear
					case "$file_choice" in 
							1)	echo "==========================================================="
								echo "The Command for present  working directory is "
								echo "pwd"
								echo "The root is the base of linux file system  denoted by /"
								echo "Your Present Working Directory is "
								echo "==========================================================="
								pwd  
								echo "==========================================================="
								;;
							2)	echo "==========================================================="
								echo "The files/folders present in this folder only "
								ls	
								echo "==========================================================="
								;;
							3)	echo "==========================================================="
								echo "The files along with their permissions and Last changed "
								echo "==========================================================="
								echo "File Type    owner  usergp size  date / Time   directory/"
								echo "Access Perm                      modified      filename  "
								echo "==========================================================="
								ls -l	
								echo "==========================================================="
								;;
							4)	echo "==========================================================="
								echo "The Tree view of this folder"

								ls -R
								echo "==========================================================="	
								;;
							5)	echo "==========================================================="
								echo "List all the files in this folder in Tabular form"
								echo "==========================================================="
								echo "File Type      owner  usergp size  date /Time   directory/"
								echo "Access Perm                        modified     filename  "
								echo "==========================================================="
								ls -al	
								echo "==========================================================="
								;;
							6)	echo "==========================================================="
								echo "Any File or Directory which starts with . will not be seen unless you request to view it in Linux"
								echo "To view it The command is ls -a"
								ls -a	
								echo "==========================================================="
								;;
							*)	echo "Wrong Choice"
								;;
					esac
					echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					;;
				2) 	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
					echo "         File Encryption         "
					echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
					echo "1.To Encrypt File"
					echo "2.To decrypt File"
					echo "3.To display all files present in the folder"
					read enc_choice;
					clear 
					case "$enc_choice" in 
						1)	echo "Enter the Exact File Name with extension to Encrypt the File"
							read file_name;
							gpg -c $file_name
									echo "Your file has been successfully Encrypted! "
									echo "Now the original file will be removed."
									rm -rf $file_name
									#echo "Wrong File name entered! "
									#echo "Re-run the program!  ;("
							;;
						2)	echo "Enter the Exact File Name with extension to Decrypt the File"
							read dec_file_name
							new_file_modified=${dec_file_name::-4}
							gpg -d $dec_file_name > $new_file_modified 
							if [ -s $new_file_modified  ]
								then
    								echo "ok"
									rm -rf $dec_file_name
									if [ -s snap.jpg ]
										then
											echo "$new_file_modified successfully decrypted"
											echo "Intruder Picture "
											display /home/sanath/linux/snap.jpg
											echo "Your Decrypted picture "
											display $new_file_modified
										else
											echo "_____"
									fi
								else
    								echo "not ok"
									rm -rf $new_file_modified
									uvccapture -m
							fi
							
							echo "Thank You"
							;;
						3)	echo "The files present in this folder are:-"
							ls -l
							;;
						*)	echo "Wrong Choice"
							;;
					esac		
					;;
				3)  echo "Thank You  :)"
					echo "BYE"
					exit;;
				*)  echo -e "\n"
					echo "Wrong Choice"
					;;
				
		esac
done
