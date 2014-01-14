getUserName
	"Return the name of the logged in user
	
		self getUserName
	"
	
	^self getEnvironmentVariable: 'USERNAME'