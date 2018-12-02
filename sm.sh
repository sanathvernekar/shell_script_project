#Project : To famililarise with Linux Commands
#Author :-sanath vernekar
#Procedure to use in Linux Terminal
#chmod +x file path along with file name 
#ex: chmod +x /home/sanath/sm.sh
#then directly execute this file by entering ./filename
#ex:./sm.sh
while true
do
		
		echo "==========================================================="
        echo "                          MENU                             "
		echo "==========================================================="
        echo "1.About Your file systems"
        echo "2.files"
        echo "3.exit"
        echo " enter your choice"
        read main_choice
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
					read file_choice
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
				2) 	echo "Files "
					ls
					;;
				3)  echo "Thank You  :)"
					echo "BYE"
					exit;;
				*)  echo -e "\n"
					echo "Wrong Choice"
					;;
				
		esac
done

