accessing
getHomeDrive
	"Return the drive letter of the home drive.
	
		self getHomeDrive
	"
	
	^self getEnvironmentVariable: 'HOMEDRIVE'