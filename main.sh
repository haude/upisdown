#!/bin/bash


#echo -e "\nWrite sth please... "
#read -p "Write sth please... " -a input
#echo "Sentents length : ${#input[@]} words only..."

#declare -i i=0;
#declare -i j=0;
#while [ $i -lt `echo ${#input[@]}` ]; do
#   
#    echo -e "\n\t\t${input[i]} of sz:${#input[i]}\n\t   ------------------";
#   temp[i]=$(echo ${input[i]});
#
#   while [ $j -lt `echo ${#input[i]}` ]; do
#	echo "char $j : ${temp[j]}";
#	#echo $j;
#	j+=1;
#    done
#
#    i+=1;
#done

##------------------------------------------------------##
##-------------------Alternatively----------------------##

read -p "Write sth please... " ip
#ip="sth ran off my head just a sec ago";
#echo ${#foo} 

thing=(
    $(
	i=0; 
	while [ $i -lt ${#ip} ] ; do
	    echo ${ip:$i:1} ; 
	    #i+=1;    
	    i=$((i+1)) ; 
	done
    )
);



echo ${thing[@]};

#replace with unicode
uthing=(
    $(
	i=0; 
	while [ $i -lt ${#thing[@]} ] ; do

	    echo "/^${thing[i]}/p" > file.sed;
	    ipp=$(echo -e `sed -n -f file.sed a2z.map| cut -f2 -d:`);
	    echo $ipp;
	    #echo ${ip:$i:1};
	    #i+=1;
	   i=$((i+1)) ; 
	done
    )
);

echo ${uthing[@]} 

##----------------------------------------------------##
##----------------------------------------------------##

#convert to unicode
#con2Uni(){
#    value=$1; # storing input argument to a value
#    echo "input arg:" . $1;
#    echo "/^$value/p"> file.sed;
#    value=sed  -n -f file.sed map.new;
#    return $value;
#}
