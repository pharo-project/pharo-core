CodeLoader provides a way to load smalltalk source file from local.

Example: 

CodeLoader new 
	loadSourceFiles: (Array with: 
		(#file:, 
		FileDirectory default fullName, 
		'/useless.st')); 
	installSourceFiles 
