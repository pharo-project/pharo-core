getCommonProgramFiles 
	"Return the common program files 
  	 typically this is C:\Program Files\Common Files
	
		self getCommonProgramFiles 
	"
	
	^self getEnvironmentVariable: 'COMMONPROGRAMFILES'