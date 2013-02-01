accessing
getProgramFilesDirectory
	"Return the program files directory
	
		self getProgramFilesDirectory
	"
	
	^self getEnvironmentVariable: 'PROGRAMFILES'