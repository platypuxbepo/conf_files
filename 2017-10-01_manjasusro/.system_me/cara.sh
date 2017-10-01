#!/bin/bash


# This is my Compile And Run Anything (cara) script. It lets you play with C++
# and Java just like you would on an interpreted
# language. Compiling, running, dealing with executables and .classes is just
# way too tedious, especially if you want decent looking executable names in C++
# (this script names your exe like your cpp file on the fly),
# and the "call the exe that isn't a file that exists" in Java bugs you like it bugs
# me. This making my first steps feel like Python ease whilst still keeping
# using Vim and not IDEs :-)

# Of course you need to use the same compilers, or adapt the g++, javac and java 
# statements accordingly.
# Just alias this to "cara" in your .bashrc, .config/fish/config.fish or whatever,
# or even put it somewhere that's in your $PATH.


# usage : « cara yourC++Program.cpp » or « cara yourJavaProgram.java ». Your code 
# is compiled in current folder and run immediately thereafter. Then you're asked
# if you wish to keep the executable / bytecode or discard it.

# Script created and tested on two Manjaro GNU/Linux systems on March 25, 2017.
# Platypux Bépo @ https://github.com/platypuxbepo/





# get file extension to know what function to execute
just_filen_ext=`echo $1 | sed -e 's/.*\.//'`
test_for_keep=`echo $2`

# optional second argument to keep the executable / bytecode

# C++ part
if [[ "$just_filen_ext" == "cpp" ]]
then
	filename_without_extension=`echo $1 | sed -e 's/\.[^.]*$//'`

	# run the magic compiling command
	g++ $1 -o $filename_without_extension

	# run the program
	'./'$filename_without_extension

	# check whether the "keep" argument was passed. If not, exit.
	if [[ -z "$2" ]]
	then
        	rm './'$filename_without_extension;
		echo
		echo "You didn't add the 'keep' argument, I'm not keeping the executable.";
		exit

	# ask if we should keep the executable
	elif [[ "$2" == "keep" ]]
	then
		echo # that's for carriage return, to make output clear as can be.

    		read -p "This is your shell speaking. Shall we keep the executable ?" yn
    		case $yn in
        		[Yy]* ) exit;;
        		[Nn]* ) rm './'$filename_without_extension; exit;;
        		* ) echo "Please answer yes or no.";;
    		esac
	fi
	
fi

# Java part
if [[ "$just_filen_ext" == "java" ]]
then

	filename_without_extension=`echo $1 | sed -e 's/\.[^.]*$//'`

	# this is just for the java bit when it comes to deleting
	filename_class=`echo $1 | sed -e 's/\.[^.]*$/.class/'`

	# run the magic compiling command
	javac $1 

	# run the program
	java $filename_without_extension

	# ask if we should keep the executable
	while true; do
		echo # that's for carriage return, to make output clear as can be.
    		read -p "This is your shell speaking. Shall we keep the bytecode ?" yn
    		case $yn in
        		[Yy]* ) exit;;
        		[Nn]* ) rm './'$filename_class; exit;;
        		* ) echo "Please answer yes or no.";;
    		esac
	done
fi
