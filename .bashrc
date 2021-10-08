########################################################
#	Senal's .bashrc Config
#
########################################################


## Make the Micro Editor Default to use it on Ranger File Manager
VISUAL=micro; export VISUAL EDITOR=micro; export micro




########################################################
#		Functions to make the workflow easier. 
#			
########################################################




########################################################
#		Turns on or off Hidden Files in Apple macOS
#		Finder
########################################################
function mac.hidden.files.on() {
	defaults write com.apple.finder AppleShowAllFiles YES;
	killall Finder
	echo "/!\ The Hidden Files is turned on. "
}

function mac.hidden.files.off() {
	defaults write com.apple.Finder AppleShowAllFiles NO; 
	killall Finder
	echo "/!\ The Hidden Files is turned off. "
}





########################################################
#		Turns on or off Single App Mode in Apple macOS
########################################################
function mac.single.app.mode.on() {
	defaults write com.apple.dock single-app -bool true;killall Dock
}


function mac.single.app.mode.off() {
	defaults write com.apple.dock single-app -bool no;killall Dock
}






########################################################
#		Generates boilerplates for project files 
########################################################

## Generates HTML Template. 

function boilerplate.generate.html(){
	echo """
	<html>
	  <head>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Your Web Application</title>
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/senalbulumulle/FOIL-UI-Framework-Library/FOIL-UI.css">
	  </head>
	  <body>
		<!-- Content here --> 
	  </body>
	</html>


	""" > name.html
}




function boilerplate.generate.c() {
	touch name.c
		echo """
/*************************************************************
*		Title: 
*        
* 		Author: 
*
* 		Description: 
**************************************************************/
		
		

#include <stdio.h>

int main() {
   // Program here
   return 0;
}		


	""" > main.c
	
}




function boilerplate.generate.js() {
	echo "hello world"
}


function boilerplate.generate.python() {
		touch main.py		
		echo """
###############################################################
#		Title: 
#        
#		Author: 
#
# 		Description: 
###############################################################/
def main():
	## Program Here 
    
# Call the Main Function 
main()		
		




	""" > main.py
}
