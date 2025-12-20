#!/bin /bash



create_dir() {
	mkdir demo

}

#if ! create_dir; then 
#	echo "The code is being existed as the direcctory already existed"
#	exit 1
#fi

echo "This should not work because code interrupted"

exit_num() {
	read -p "enter num" num
	if [ $num -eq 10 ]; then 
		return 0
		esle
		return 1
	fi
}

	if  ! exit_num; then 
	       echo "num is not present"
       exit 1
	fi
 echo " num is present"	
