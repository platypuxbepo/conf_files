#!/bin/bash

# This is my Compile And Run Anything (cara) script. It lets you play with C++ and Java just like you would on an interpreted language.
# Just alias this to "cara" in your .bashrc, .config/fish/config.fish or whatever, or even put it somewhere that's in your $PATH.
# Platypux Bépo @ https://github.com/platypuxbepo/

# get file extension to know what function to execute
just_filen_ext=`echo $1 | sed -e 's/.*\.//'`


# C++ part
if [[ "$just_filen_ext" == "cpp" ]]
then
	filename_without_extension=`echo $1 | sed -e 's/\.[^.]*$//'`

	# run the magic compiling command
	g++ $1 -o $filename_without_extension

	# run the program
	'./'$filename_without_extension

	# ask if we should keep the executable
	while true; do
    		read -p "Shall we keep the executable ?" yn
    		case $yn in
        		[Yy]* ) exit;;
        		[Nn]* ) rm './'$filename_without_extension; exit;;
        		* ) echo "Please answer yes or no.";;
    		esac
	done
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
	/usr/lib/jvm/java-8-openjdk/bin/java $filename_without_extension

	# ask if we should keep the executable
	while true; do
    		read -p "Shall we keep the bytecode ?" yn
    		case $yn in
        		[Yy]* ) exit;;
        		[Nn]* ) rm './'$filename_class; exit;;
        		* ) echo "Please answer yes or no.";;
    		esac
	done
fi
