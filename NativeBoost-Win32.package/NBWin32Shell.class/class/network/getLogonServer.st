getLogonServer
	"Returns the users logon server
	
		self getLogonServer
	"
	
	^self getEnvironmentVariable: 'LOGONSERVER'