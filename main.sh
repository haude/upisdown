#!/bin/bash


#echo -e "\nWrite sth please... "
read -p "Write sth please... " input

#echo -e "\nyou wrote..."

#for i in "${input[@]}";
#do
#	echo $i 
#done
echo "length of the $input is ${#input} chars>>includig spaces"

declare -i ai=1; 
declare -i aj=0;
while [ $ai -lt ${#input} ] ; 
do
    #truncate the complete sentence_string into no. of single word, use space as a seperator
    inp=$(echo $input|cut -f$ai -d' ');
    echo -e "\nString $ai: \t${inp}";
    echo -e '\n-----------------------------';

    aj=0; 
    
    
#    while [ $aj -lt ${#input1[i]} ] ; 
 #   do 
#	echo ${${input1[i]}:$j:1}; 
#		     #con2Uni `echo ${${input[i]}:$j:1}` ; 
#	j=$((j+1)) ; 
 #   done
  
   
    

#thing=(
#	    $(j=0; 
#		while [ $j -lt ${#input[i]} ] ; 
#		do 
#		    echo ${${input[i]}:$j:1}; 
#		     #con2Uni `echo ${${input[i]}:$j:1}` ; 
#		    j=$((j+1)) ; 
#		done
#	    )
#	);

    ai+=1;
	
done
#convert to unicode
#con2Uni(){
#    value=$1; # storing input argument to a value
#    echo "input arg:" . $1;
#    echo "/^$value/p"> file.sed;
#    value=sed  -n -f file.sed map.new;
#    return $value;
#}
