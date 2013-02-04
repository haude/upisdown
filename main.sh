#!/bin/bash


#echo -e "\nWrite sth please... "
read -p "Write sth please... " -a input

#echo -e "\nyou wrote..."

#for i in "${input[@]}";
#do
#	echo $i 
#done
echo "Sentents length : ${#input[@]} words only..."

i=0;
j=0;
while [ $i -lt `echo ${#input[@]}` ]; do
   
    echo -e "\n\t\t${input[i]} of sz:${#input[i]}\n\t   ------------------";
    temp=$(echo ${input[i]});
    while [ $j -lt `echo ${#input[i]}` ]; do
	#echo "char $j : ${temp[j]}";
	echo $j;
	j+=1;
    done

    i+=1;
done



##----------------------------------------------------------------
input="input not";
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
