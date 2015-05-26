getTempDirectory
	"Return the name of the temp directory.
	
		self getTempDirectory
	"
	
	^self getEnvironmentVariable: 'TEMP'