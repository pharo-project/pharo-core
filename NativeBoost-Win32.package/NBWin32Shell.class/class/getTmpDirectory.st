accessing
getTmpDirectory
	"Return the name of the temp directory.
	
		self getTmpDirectory
	"
	
	^self getEnvironmentVariable: 'TMP'