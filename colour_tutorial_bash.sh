#!/bin/bash


#For reference : https://misc.flogisoft.com/bash/tip_colors_and_formatting

print_colour_code(){
#demo #Blue line 
echo "Demo blue line"
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

print_design_till 80;
echo "Demo colour codes for all possible colours ";
for clbg in {40..47} {100..107} 49 ; do
	for clfg in {30..37} {90..97} 39 ; do
		for attr in 0 1 2 4 5 7 ; do
			echo -en "\e[${attr};${clbg};${clfg}m ^[${attr};${clbg};${clfg}m \e[0m"
		done
		echo 
	done
done
print_design_till 80;

print_design_till 80;
echo "Demo colour codes for all possible colours for foreground and background ";
print_design_till 80;
for fgbg in 38 48 ; do # Foreground / Background
    for color in {0..255} ; do # Colors
        # Display the color
        printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
        # Display 6 colors per lines
        if [ $((($color + 1) % 6)) == 4 ] ; then
            echo # New line
        fi
    done
    echo # New line
done
}


format(){
	#Text formating tool for font 
	#1 -Text format
	#2 -Foregroung colour
	#3 -Background colour 
	if [[ $1 == "help" ]]; then
		print_design_till 80;
		echo "Text Formating tool for font";
		echo ""
		echo "1 -Text format";
		echo "2 -Foregroung colour";
		echo "3 -Background colour ";
		echo "Function Usage  : format Text_format Foreground_colour Backgroud_colour"
		echo "Example : format bold red green ";
		echo "The above line will change font style to bold, font Foreground_colour to red & font Background_colour to green";
		echo "For resetting to original Font format , just call the function name without any arguments ";
		echo "Resetting format : format reset";
	elif [[ $1 == "code" ]]; then
		print_design_till 80;
		echo "Colour code of for all colours are:";
		print_colour_code; 
	fi
	case $1 in
	reset | default )
		echo -e "\e[0m"
	;;
	"bold" | "Bold" | 1)
		echo -e "\e[1m"
	;;
	"rbold" | "RBold" | 7)
		echo -e "\e[21m"
	;;
	"dim" | "Dim" | 2)
		echo -e "\e[2m"
	;;
	"rdim" | "RDim" | 8)
		echo -e "\e[22m"
	;;
	"underline" | "Underline" | 3)
		echo -e "\e[4m"
	;;
	"runderline" | "RUnderline" | 9)
		echo -e "\e[24m"
	;;
	"blink" | "Blink" | 4)
		echo -e "\e[5m"
	;;
	"rblink" | "RBlink" | 10)
		echo -e "\e[25m"
	;;
	"invert" | "Invert" | 5)
		echo -e "\e[7m"
	;;
	"rinvert" | "RInvert" | 11)
		echo -e "\e[27m"
	;;
	"hidden" | "Hidden" | 6)
		echo -e "\e[8m"
	;;
	"rhidden" | "RHidden" | 12	)
		echo -e "\e[28m"
	;;	
	*)
		echo -e "\e[0m"
	;;
	esac
	

	case $2 in
	reset | default )
		echo -e "\e[39m"
	;;
	"black" | "Black" | 1)
		echo -e "\e[30m"
	;;
	"Red" | "red" | 2)
		echo -e "\e[31m"
	;;
	"Green" | "green" | 3)
		echo -e "\e[32m"
	;;
	"Yellow" | "yellow" | 4)
		echo -e "\e[33m"
	;;
	"blue" | "Blue" | 5)
		echo -e "\e[34m"
	;;
	"magneta" | "Magneta" | 6)
		echo -e "\e[35m"
	;;
	"cyan" | "Cyan" | 7)
		echo -e "\e[36m"
	;;
	"lightgrey" | "LightGrey" | 8)
		echo -e "\e[37m"
	;;
	"darkgrey" | "DarkGrey" | 9)
		echo -e "\e[90m"
	;;
	"lightred" | "LightRed" | 10)
		echo -e "\e[91m"
	;;
	"lightgreen" | "LightGreen" | 11)
		echo -e "\e[92m"
	;;
	"lightyellow" | "LightYellow" | 12)
		echo -e "\e[93m"
	;;
	"lightblue" | "LightBlue" | 13)
		echo -e "\e[94m"
	;;
	"lightmagneta" | "LightMagneta" | 14)
		echo -e "\e[95m"
	;;
	"lightcyan" | "LightCyan" | 15)
		echo -e "\e[96m"
	;;
	"white" | "White" | 16)
		echo -e "\e[97m"
	;;
	*)
		echo -e "\e[39m"
	;;
	esac


	case $3 in
	reset | default )
		echo -e "\e[49m"
	;;
	"black" | "Black" | 1)
		echo -e "\e[40m"
	;;
	"Red" | "red" | 2)
		echo -e "\e[41m"
	;;
	"Green" | "green" | 3)
		echo -e "\e[42m"
	;;
	"Yellow" | "yellow" | 4)
		echo -e "\e[43m"
	;;
	"blue" | "Blue" | 5)
		echo -e "\e[44m"
	;;
	"magneta" | "Magneta" | 6)
		echo -e "\e[45m"
	;;
	"cyan" | "Cyan" | 7)
		echo -e "\e[46m"
	;;
	"lightgrey" | "LightGrey" | 8)
		echo -e "\e[47m"
	;;
	"darkgrey" | "DarkGrey" | 9)
		echo -e "\e[100m"
	;;
	"lightred" | "LightRed" | 10)
		echo -e "\e[101m"
	;;
	"lightgreen" | "LightGreen" | 11)
		echo -e "\e[102m"
	;;
	"lightyellow" | "LightYellow" | 12)
		echo -e "\e[103m"
	;;
	"lightblue" | "LightBlue" | 13)
		echo -e "\e[104m"
	;;
	"lightmagneta" | "LightMagneta" | 14)
		echo -e "\e[105m"
	;;
	"lightcyan" | "LightCyan" | 15)
		echo -e "\e[106m"
	;;
	"white" | "White" | 16)
		echo -e "\e[107m"
	;;
	*)
		echo -e "\e[49m"
	;;
	esac
}

print_design_till(){
		count=0;
		echo -e "\e[4m"
		echo -e "\033[32m"
		#You can change characters in this code in place of CHARACTER
		while [ $count -lt $1 ]
		do 
			echo -n "=";	#CHARACTER 1
			count=$((count+1))
			#let "count++"   increment can be done in many ways 
			#count=$((count+1))
			#((count++))
		done
		echo "";
		count=0;
		while [ $count -lt $1 ]
		do 
			echo -n "*";     #CHARACTER 2
			let "count++"   #increment can be done in many ways 
		done
		echo "";
		count=0;
		while [ $count -lt $1 ]
		do 
			echo -n "=";	#CHARACTER 3
			((count++))
		done
		echo -e "\e[0m"
}

set_style(){
echo -e "\e[$1;39;49m";
}
set_fc(){
echo -e "\e[1;$1;49m";
}
set_bc(){
echo -e "\e[1;39;$1m";
}
change_font(){
echo -e "\e[$1;$2;$3m";
}


#Comment from here till end to use the above functions for your use in your script 
#use case format 
#format underline green lightgrey
while true
do
		
		echo "==========================================================="
        echo "                 BASH COLOUR TUTORIAL MENU                 "
		echo "==========================================================="
		#echo -e "\033[32m" #menu colour to green colour 
        echo "1.To print colour code pallet of all colours";
        echo "2.To change font style";
		echo "3.To change known Foreground colour";
		echo "4.To change known background colour";
		echo "5.To change all Font Foreground_colour Background_colour at once ";
		echo "6.To reset to default format";
		echo "7.To print banner";
        echo "8.exit";
        echo "Enter your choice"
        read main_choice;
		clear
        case "$main_choice" in

                1)  
					print_design_till 80;
					print_colour_code;
					print_design_till 80;
					;;
				2)
					echo "Choose your font style from below";
					echo "1.Bold";
					echo "2.Dim";
					echo "3.Underlined";
					echo "4.Blink";
					echo "5.Inverted";
					echo "6.Hidden";
					echo "7.Revert Bold";
					echo "8.Revert Dim";
					echo "9.Revert Underlined";
					echo "10.Revert Blink";
					echo "11.Revert Inverted";
					echo "12.Revert Hidden";
					read font_style;
					case "$font_style" in 
						1)format bold;
							;;
						2)format dim;
							;;
						3)format underline;
							;;
						4)format blink;
							;;
						5)format invert;
							;;
						6)format hidden;
							;;
						7)format rbold;
							;;
						8)format rdim;
							;;
						9)format runderline;
							;;
						10)format rblink;
							;;
						11)format rinvert;
							;;
						12)format rhidden;
							;;
						*)echo "Invalid choice "
							;;
					esac
					;;
				3)
					echo "choose some of the known colours to change foreground colour";
					echo -e "\e[30m 1.black ";
					echo -e "\e[31m 2.red "; 
					echo -e "\e[32m 3.green ";
					echo -e "\e[33m 4.yellow ";
					echo -e "\e[34m 5.blue ";
					echo -e "\e[35m 6.magneta ";
					echo -e "\e[36m 7.cyan  ";
					echo -e "\e[37m 8.lightgrey  ";
					echo -e "\e[90m 9.darkgrey ";
					echo -e "\e[91m 10.lightred"; 
					echo -e "\e[92m 11.lightgreen"; 
					echo -e "\e[93m 12.lightyellow ";
					echo -e "\e[94m 13.lightblue ";
					echo -e "\e[95m 14.lightmagneta ";
					echo -e "\e[96m 15.lightcyan ";
					echo -e "\e[97m 16.white";
					format;
					read fg_colour;
					format default $fg_colour default;
					;;
					
				4)
					echo "choose some of the known colours to change background colour";
					echo -e "\e[40m 1.black ";
					echo -e "\e[41m 2.red "; 
					echo -e "\e[42m 3.green ";
					echo -e "\e[43m 4.yellow ";
					echo -e "\e[44m 5.blue ";
					echo -e "\e[45m 6.magneta ";
					echo -e "\e[46m 7.cyan";
					echo -e "\e[47m 8.lightgrey";
					echo -e "\e[100m 9.darkgrey ";
					echo -e "\e[101m 10.lightred"; 
					echo -e "\e[102m 11.lightgreen"; 
					echo -e "\e[103m 12.lightyellow ";
					echo -e "\e[104m 13.lightblue ";
					echo -e "\e[105m 14.lightmagneta ";
					echo -e "\e[106m 15.lightcyan ";
					echo -e "\e[107m 16.white";
					format;
					read bg_colour;
					format default default $bg_colour;
					;;
				5)
					echo "Choose your font style from below";
					echo "1.Bold";
					echo "2.Dim";
					echo "3.Underlined";
					echo "4.Blink";
					echo "5.Inverted";
					echo "6.Hidden";
					echo "7.Revert Bold";
					echo "8.Revert Dim";
					echo "9.Revert Underlined";
					echo "10.Revert Blink";
					echo "11.Revert Inverted";
					echo "12.Revert Hidden";
					read font_style;
					echo "choose some of the known colours to change foreground colour";
					echo -e "\e[30m 1.black ";
					echo -e "\e[31m 2.red "; 
					echo -e "\e[32m 3.green ";
					echo -e "\e[33m 4.yellow ";
					echo -e "\e[34m 5.blue ";
					echo -e "\e[35m 6.magneta ";
					echo -e "\e[36m 7.cyan  ";
					echo -e "\e[37m 8.lightgrey  ";
					echo -e "\e[90m 9.darkgrey ";
					echo -e "\e[91m 10.lightred"; 
					echo -e "\e[92m 11.lightgreen"; 
					echo -e "\e[93m 12.lightyellow ";
					echo -e "\e[94m 13.lightblue ";
					echo -e "\e[95m 14.lightmagneta ";
					echo -e "\e[96m 15.lightcyan ";
					echo -e "\e[97m 16.white";
					format;
					read fg_colour;
					echo "choose some of the known colours to change background colour";
					echo -e "\e[40m 1.black ";
					echo -e "\e[41m 2.red "; 
					echo -e "\e[42m 3.green ";
					echo -e "\e[43m 4.yellow ";
					echo -e "\e[44m 5.blue ";
					echo -e "\e[45m 6.magneta ";
					echo -e "\e[46m 7.cyan";
					echo -e "\e[47m 8.lightgrey";
					echo -e "\e[100m 9.darkgrey ";
					echo -e "\e[101m 10.lightred"; 
					echo -e "\e[102m 11.lightgreen"; 
					echo -e "\e[103m 12.lightyellow ";
					echo -e "\e[104m 13.lightblue ";
					echo -e "\e[105m 14.lightmagneta ";
					echo -e "\e[106m 15.lightcyan ";
					echo -e "\e[107m 16.white";
					format;
					read bg_colour;
					format $font_style $fg_colour $bg_colour;
					;;
				6)
					format;
					echo "Your shell colour has been changed to default";
					notify-send "Your shell colour & font has been changed to default format";
					;;
				7)
					echo "Enter length of the banner";
					read banner_length;
					print_design_till $banner_length;
					;;
				8)  echo "Thank You  :)";
					notify-send "Thank You ;)";
					exit;;
				*)  echo -e "\n"
					echo "Wrong Choice"
					;;
		esac
done
#comment till here 


