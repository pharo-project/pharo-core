getSystemDrive
	"Return the drive containing the Windows root directory, usually C:
	
		self getSystemDrive
	"
	
	^self getEnvironmentVariable: 'SYSTEMDRIVE'