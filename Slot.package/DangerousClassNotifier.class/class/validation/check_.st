check: classSymbol

	self enabled ifTrue: 
	[ 	
		(self tooDangerousClasses includes: classSymbol)
			ifTrue: [ self error: classSymbol name , ' cannot be changed' ].	"Check if the receiver should not be redefined"

		(self shouldNotBeRedefined: classSymbol)		
			ifTrue: [ self notify: classSymbol asText allBold , ' should not be redefined. \Proceed to store over it.' withCRs ].
	].
	^true "Just to keep some tests happy"