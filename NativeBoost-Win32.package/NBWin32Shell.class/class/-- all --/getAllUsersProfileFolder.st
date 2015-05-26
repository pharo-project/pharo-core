getAllUsersProfileFolder
	"Return the profile path for all users.
  	 typically this is C:\Documents and Settings\All Users
	
		self getAllUsersProfileFolder
	"
	
	^self getEnvironmentVariable: 'ALLUSERSPROFILE'