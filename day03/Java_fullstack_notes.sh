#!/bin/bash

<< task deploye app
and handles the code and error
task

code_clone() {
   echo "cloning the fullstack app..."
   git clone https://github.com/Ratnmala1007/Book-finder-App.git
}

install_requirement() {

 echo " installing dependancy"
 sudo npm install
}

required_run() {

	echo "run app"
	sudo npm start
}
echo "************deployement started***************"
code_clone 
install_requirement 
required_run

echo "************deployement done***************"
   
