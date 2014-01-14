getPathExtensions
	"Returns a list of the file extensions that the OS considers to be executable.
	
		self getPathExtensions
	"
	
	^self getEnvironmentVariable: 'PATHEXT'