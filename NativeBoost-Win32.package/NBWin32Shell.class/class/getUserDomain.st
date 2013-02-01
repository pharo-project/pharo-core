accessing
getUserDomain
	"Return the name of the domain that contains the user’s account.
	
		self getUserDomain
	"
	
	^self getEnvironmentVariable: 'USERDOMAIN'