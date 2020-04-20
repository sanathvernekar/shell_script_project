#!/bin/bash

#bash tutorial script 

#Argument reading tutorial for bash 
start_time=$SECONDS;
print_design_till 80;
echo "Current FILE name is $0" #Or termed as 0th argument (command name)
echo "Argument 1 $1"
echo "Argument 2 $2"
echo "Argument 3 $3"


echo "All the arguments are double quoted under single double quote $*"
#proof for the above statement 
for token in "$*"
do
	echo "$token"
done

echo "All the arguments are double quoted individually  $@"
#proof for the above statement 
for token in "$@"
do
	echo "$token"
done


echo "Number of arguments supplied to script : $#"
echo "current command is $0"
print_design_till 80;

#Process ID'd of the program
echo "Current process ID/ current_PID is $$"
echo "process number/PID of last background command $!"
echo "The exit status of the last command executed $?" 

#Variables 
echo "Current user $USER";
echo "Current host $HOSTNAME";
echo "A random number : $RANDOM"
echo "Current line Number of this bash script is $LINENO"


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
	"bold")
		echo -e "\e[1m"
	;;
	"rbold")
		echo -e "\e[21m"
	;;
	"dim")
		echo -e "\e[2m"
	;;
	"rdim")
		echo -e "\e[22m"
	;;
	"underline")
		echo -e "\e[4m"
	;;
	"runderline")
		echo -e "\e[24m"
	;;
	"blink")
		echo -e "\e[5m"
	;;
	"rblink")
		echo -e "\e[25m"
	;;
	"invert")
		echo -e "\e[7m"
	;;
	"rinvert")
		echo -e "\e[27m"
	;;
	"hidden")
		echo -e "\e[8m"
	;;
	"rhidden")
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
	"black" | "Black")
		echo -e "\e[30m"
	;;
	"Red" | "red")
		echo -e "\e[31m"
	;;
	"Green" | "green")
		echo -e "\e[32m"
	;;
	"Yellow" | "yellow")
		echo -e "\e[33m"
	;;
	"blue" | "Blue")
		echo -e "\e[34m"
	;;
	"magneta" | "Magneta")
		echo -e "\e[35m"
	;;
	"cyan" | "Cyan")
		echo -e "\e[36m"
	;;
	"lightgrey" | "LightGrey")
		echo -e "\e[37m"
	;;
	"darkgrey" | "DarkGrey")
		echo -e "\e[90m"
	;;
	"lightred" | "LightRed")
		echo -e "\e[91m"
	;;
	"lightgreen" | "LightGreen")
		echo -e "\e[92m"
	;;
	"lightyellow" | "LightYellow")
		echo -e "\e[93m"
	;;
	"lightblue" | "LightBlue")
		echo -e "\e[94m"
	;;
	"lightmagneta" | "LightMagneta")
		echo -e "\e[95m"
	;;
	"lightcyan" | "LightCyan")
		echo -e "\e[96m"
	;;
	"white" | "White")
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
	"black" | "Black")
		echo -e "\e[40m"
	;;
	"Red" | "red")
		echo -e "\e[41m"
	;;
	"Green" | "green")
		echo -e "\e[42m"
	;;
	"Yellow" | "yellow")
		echo -e "\e[43m"
	;;
	"blue" | "Blue")
		echo -e "\e[44m"
	;;
	"magneta" | "Magneta")
		echo -e "\e[45m"
	;;
	"cyan" | "Cyan")
		echo -e "\e[46m"
	;;
	"lightgrey" | "LightGrey")
		echo -e "\e[47m"
	;;
	"darkgrey" | "DarkGrey")
		echo -e "\e[100m"
	;;
	"lightred" | "LightRed")
		echo -e "\e[101m"
	;;
	"lightgreen" | "LightGreen")
		echo -e "\e[102m"
	;;
	"lightyellow" | "LightYellow")
		echo -e "\e[103m"
	;;
	"lightblue" | "LightBlue")
		echo -e "\e[104m"
	;;
	"lightmagneta" | "LightMagneta")
		echo -e "\e[105m"
	;;
	"lightcyan" | "LightCyan")
		echo -e "\e[106m"
	;;
	"white" | "White")
		echo -e "\e[107m"
	;;
	*)
		echo -e "\e[49m"
	;;
	esac
	

}

#For loop tutorial 
#Table of 6
print_table(){
	table=$1;
	for i in {1..10}
	do
		echo "$table * $i = $(($table*$i)) "
	done
}
print_table 7;

#Array Tutorial for bash 
#Program to read names for n and display all names from array
echo "Enter n , for n names"
read n;
counter=0;
while [[ $counter < $n ]];
do
	echo "Enter $counter Name";
	read Name[$counter];
	((counter++));
done
echo "your names are as follows "
echo "${Name[@]}"
echo "${Name[*]}"
unset counter


#Function usage 
print_design(){
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^";
	echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%";
	echo "_______________________________________________";
}

print_design_till(){
		count=0;
		echo -e "\e[4m"
		echo -e "\033[32m"
		while [ $count -lt $1 ]
		do 
			echo -n "=";
			count=$((count+1))
			#let "count++"   increment can be done in many ways 
			#count=$((count+1))
			#((count++))
		done
		echo "";
		count=0;
		while [ $count -lt $1 ]
		do 
			echo -n "*";
			let "count++"   #increment can be done in many ways 
		done
		echo "";
		count=0;
		while [ $count -lt $1 ]
		do 
			echo -n "=";
			((count++))
		done
		echo -e "\e[0m"
}

#Unix/Linux basic Operators tutorial 
#It is very important to understand that all the conditional
#expressions should be inside square braces with spaces around them
#for example [ $a == $b ] is correct whereas, [$a==$b] is incorrect. 
#since [ is a test operator , which requires spaces on both sides of the operator

math_comparision(){

		a=$1
		b=$2
		#2 ways of solving an expression consisting of basic operators 
		#1.using expr keyword 
		#2.using brackets to solve them 

		#Addition 
		val=`expr $a + $b`;echo "Addition of $a $b is  $val";
		unset val;
		val=$(($a+$b));echo "Addition of $a $b is  $val";
		unset val;

		#Subtraction 
		val=`expr $a - $b`;echo "Subtraction of $a $b is  $val";
		unset val;
		val=$(($a-$b));echo "Subtraction of $a $b is  $val";
		unset val;

		#Multiplication
		val=`expr $a \* $b`;echo "Multiplication of $a $b is  $val";
		unset val;
		#Note change in usage here 
		val=$(($a*$b));echo "Multiplication of $a $b is  $val";
		unset val;

		#Division
		val=`expr $a / $b`;echo "Division of $a $b is  $val";
		unset val;
		val=$(($a/$b));echo "Division of $a $b is  $val";
		unset val;

		#Modulus 
		val=`expr $a % $b`;echo "Modulus of $a $b is  $val";
		unset val;
		val=$(($a%$b));echo "Modulus of $a $b is  $val";
		unset val;


		#Relational operators 
		#Equality operator to check equality status , return true or false 
		#[ $a == $b ]

		if [ $a == $b ];then
			echo "$a is equal to $b"; 
		else 
			echo "$a is not equal to $b";
		fi

		if [ $a != $b ];then
			echo "$a is not equal to $b"; 
		else 
			echo "$a is equal to $b";
		fi


		if [ $a -eq $b ];then
			echo "$a is equal to $b"; 
		else 
			echo "$a is not equal to $b";
		fi

		if [ $a -ne $b ];then
			echo "$a is not equal to $b";
		else 
			echo "$a is equal to $b"; 
		fi


		if [ $a -gt $b ];then
			echo "$a is greater than $b "; 
		else 
			echo "$a is not greater than  $b";
		fi


		if [ $a -lt $b ];then
			echo "$a is less than $b "; 
		else 
			echo "$a is not less than $b";
		fi


		if [ $a -ge $b ];then
			echo "$a is greater than or equal to $b "; 
		else 
			echo "$a is less than or equal to $b";
		fi


		if [ $a -le $b ];then
			echo "$a is less than or equal to $b"; 
		else 
			echo "$a is not less than or equal to $b";
		fi

}
echo "Enter value for Math Comparisions between 2 numbers ";
echo "Enter value 1";
read val1;
echo "Enter value 2";
read val2;
math_comparision $val1 $val2



unset a;
unset b;
compare_string(){

		#String Comparision operators 
		given_string1=$1
		given_string2=$2
		#string comparision done without using if else statements 
		[ $given_string1 != $given_string2 ] && echo "$given_string1 and $given_string2 are not equal " || echo "$given_string1 and $given_string2 are equal ";

		#operator != is used here to compare 2 strings 
		a="sanath"
		b="vernekar"
		if [[ $a != $b ]];then
			echo "$a is not equal to $b "; 
		else 
			echo "$a is equal to $b";
		fi

		#operator used:   -z
		if [[ -z $a ]];then
			
			echo "$a is a empty string (Length equal to 0)";
		else 
			echo "$a is not a empty string(Length not equal to 0) "; 
		fi
		#operator used:   -n
		if [[ -n $a ]];then
			echo "$a is not a empty string(Length not equal to 0) "; 
		else 
			echo "$a is a empty string (Length equal to 0)";
		fi
		#operator used:   -$string_name in brackets 
		if [[ $a ]];then
			echo "$a is not a empty string(Length not equal to 0) "; 
		else 
			echo "$a is a empty string (Length equal to 0)";
		fi


		VAR='GNU/Linux is an operating system';
		if [[ $VAR == *"Linux"* ]]; then
		  echo "It's there.";
		else 
			echo "It's not there";
		fi

		unset VAR;
		VAR='GNU/Linux is an operating system'
		if [[ $VAR =~ .*Linux.* ]]; then
		  echo "It's there.";
		else 
			echo "It's not there ";
		fi

		VAR1="Linuxize"
		VAR2="Ubuntu"

		if [[ "$VAR1" > "$VAR2" ]]; then
			echo "${VAR1} is lexicographically greater then ${VAR2}."
		elif [[ "$VAR1" < "$VAR2" ]]; then
			echo "${VAR2} is lexicographically greater than ${VAR1}."
		else
			echo "Strings are equal"
		fi

}
compare_string sanath vernekar

print_design_till 80;
echo "File test operations "
print_design_till 80;
#FILE test operations 

if [[ $1 == "" ]];then 
	echo "Since argument is NULL , we replace it with our default file name"
	FILE="good_boy.sh";
else 
	FILE=$1;
	echo "$1 is considered "
fi
if [[ $2 == "" ]];then 
	echo "Since argument is NULL , we replace it with our default file name"
	FILE2="search.sh";
else 
	FILE2=$2;
	echo "$2 is considered "
fi

if [[ -e $FILE ]]; then
	echo "$FILE exists in $(pwd) directory ";
else 
	echo "$FILE doesnot exists in $(pwd) directory , so we create a your filename";
	touch $FILE;
	echo "cal" > $FILE
fi

if [[ -a $FILE2 ]]; then
	echo "$FILE exists in $(pwd) directory ";
else 
	echo "$FILE doesnot exists in $(pwd) directory , so we create a your filename";
	touch $FILE;
	echo "cal" > $FILE
fi


if [[ -x $FILE ]]; then
	echo "$FILE is a executable FILE  ";
else 
	#You can set executable permission here 
	#chmod +x $FILE;
	echo "$FILE is not a executable file ";
fi

if [[ -b $FILE ]]; then
	echo "$FILE is a binary FILE/block special FILE  ";
else 
	echo "$FILE is not a binary FILE/block special FILE  ";
fi

if [[ -c $FILE ]]; then
	echo "$FILE is a character special FILE ";
else 
	echo "$FILE is not a character special FILE ";
fi

if [[ -d $FILE ]]; then
	echo "$FILE is a directory";
else 
	echo "$FILE is not  a directory";
fi

if [[ -f $FILE ]]; then
	echo "$FILE is an ordinary FILE kind (or it is a FILE name)";
else 
	echo "$FILE is not an ordinary FILE";
fi

if [[ -g $FILE ]]; then
	echo "$FILE s group ID has been set ";
else 
	echo "$FILE group ID has not been set"
fi

if [[ -k $FILE ]]; then
	echo "$FILE s sticky bit is set";
else 
	echo "$FILE s sticky bit is not set";
fi

if [[ -p $FILE ]]; then
	echo "$FILE is a Named pipe ";
else 
	echo "$FILE is not a named pipe"
fi

if [[ -t $FILE ]]; then
	echo "$FILE descriptor is open and associated with terminal ";
else 
	echo "$FILE descriptor is closed and not associated with terminal ";
fi

if [[ -u $FILE ]]; then
	echo "$FILE s user ID bit has been set";
else 
	echo "$FILE s user ID bit is not set";
fi


if [[ -r $FILE ]]; then
	echo "$FILE is a readable FILE for user $(whoami)";
else 
	echo "$FILE is not a  readable FILE/ read permission is not set for user $(whoami) ";
fi

if [[ -w $FILE ]]; then
	echo "$FILE is a writable FILE for user $(whoami)";
else 
	echo "$FILE is not a  writable FILE/ write permission is not set for user $(whoami) ";
fi

if [[ -s $FILE ]]; then
	echo "$FILE size is greater than 0 , or the FILE is not empty";
else 
	echo "$FILE is an empty FILE / or $FILE size is 0";
fi

if [[ -O $FILE ]]; then
	echo "$FILE is owned by  user  $(whoami)";
else 
	echo "$FILE is not owned by user $(whoami)";
fi

if [[ -S $FILE ]]; then
	echo "$FILE is a socket file ";
else 
	echo "$FILE is not a socket file ";
fi

if [[ $FILE -nt $FILE2 ]]; then
	echo "$FILE is newer than $FILE2";
else 
	echo "$FILE is older than $FILE2";
fi

if [[ $FILE -ot $FILE2 ]]; then
	echo "$FILE is older than $FILE2";
else 
	echo "$FILE is newer than $FILE2";
fi

#To get details of all the files in current directory
echo "Details of all the files present the directory "
print_design_till 80;
for i in *
do
file $i
done
print_design_till 80;


#Case usage / switch case usage 
VAR="CentOS"

case $VAR in

  "Arch Linux")
    echo  "Linuxize matched"
    ;;

  Fedora | CentOS)
    echo  "Red Hat"
    ;;
esac

#While usage 
#To print decrement pattern 
unset a;
unset b;
a=0;
while [ "$a" -lt 10 ]
do 
	b=$a;
	
	while [ "$b" -ge 0 ]
	do
		echo -n "$b ";
		b=$((b-1))
	done
	echo ""
	a=$((a+1))
done

echo "Until usage";
format blink green ;	
#Untill usage 
unset a;
a=1
until [ $a -gt 10 ]
do
	b=$a;
	c=$(($a-1));
	#c=$(($a/2))
	#echo "$c"
	until [ $c -lt 0 ]
		do
			echo -n " ";
			let "c--";
		done
   	until [ $b -gt 10 ]
		do
			echo -n "*";
			let "b++"
		done  
	echo "";
   a=`expr $a + 1`;
done
format;



#Colour game
print_colour_code(){


#demo # Blue line 
for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

for clbg in {40..47} {100..107} 49 ; do
	for clfg in {30..37} {90..97} 39 ; do
		for attr in 0 1 2 4 5 7 ; do
			echo -en "\e[${attr};${clbg};${clfg}m ^[${attr};${clbg};${clfg}m \e[0m"
		done
		echo 
	done
done

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

#print_colour_code;



#Shell substitution




echo "Time taken for the execution of $0 script is $(($SECONDS-$start_time)) seconds"






