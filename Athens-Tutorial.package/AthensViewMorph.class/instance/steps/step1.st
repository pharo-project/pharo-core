step1
 "Step 1:

Get Athens into your image. "

	Gofer it 
	smalltalkhubUser: 'Pharo' project: 'Athens';
	configuration;
	load.

	ConfigurationOfAthens loadVersion: '2.0'.

	"Tutorial"

	Gofer it 
	smalltalkhubUser: 'Pharo' project: 'Athens';
	package: 'Athens-Tutorial';
	load.


	"To open a tutorial window do: "
	
	AthensTutorial new openWithSpec.
	
	"You can find the source code for all tutorial steps in AthensViewMorph" 

.


