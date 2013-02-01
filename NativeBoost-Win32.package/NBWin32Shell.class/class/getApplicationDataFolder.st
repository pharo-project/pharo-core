accessing
getApplicationDataFolder
	"Return the folder for application data
	
		self getApplicationDataFolder
	"
	
	^self getEnvironmentVariable: 'APPDATA'