activateWith: aCommandLine

	
	Smalltalk tools userManager canRunStartupScript ifFalse: [ ^ self ].
	"Make sure that the PharoCommandLineHandler starts at the top of the stack in the main UI thread."
	UIManager default defer:  [ 
		super activateWith: aCommandLine ]