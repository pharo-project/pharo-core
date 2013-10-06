getSystemRootDirectory
	"Return the systems root directory. Typically this is
	  'C:\WINDOWS'
	
		self getSystemRootDirectory
	"
	
	^self getEnvironmentVariable: 'SystemRoot'