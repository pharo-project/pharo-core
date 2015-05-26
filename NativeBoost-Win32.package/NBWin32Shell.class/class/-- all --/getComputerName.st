getComputerName
	"Return the name of the computer.
	
		self getComputerName
	"
	
	^self getEnvironmentVariable: 'COMPUTERNAME'