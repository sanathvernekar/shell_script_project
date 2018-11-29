
flag=0
rm /home/sanath/snap.jpg
while true
do
		
		echo "==========================================================="
        echo "                          MENU                             "
		echo "==========================================================="
        echo "1.Your Picture"
        echo "2.files"
        echo "3.exit"
        echo " enter your choice"
        read ch
		clear
        case "$ch" in

                1)echo "Enter Password"
                  read pass
                  if [ "$pass" != "123" ]
					then
					 	uvccapture -m
						flag=1
					 	#display snap.jpg
					else 
						if [ "$flag" == "1" ]
						then 
						echo "INTRUDER PICTURE"
						display snap.jpg
						fi
						echo "Your protected picture is here"
						display /home/sanath/pPics/snap.jpg	
						clear
					fi
					;;
				2) 	echo "Files present in this folder are"
					#echo "Enter any file name you want to explore"
					#read fn
					
					ls
					;;
				3)  echo "BYE"
					exit;;
				*)  echo -e "\n"
					echo "Wrong Choice"
				
		esac
done

