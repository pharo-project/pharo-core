class initialization
initializeUnderscore
	self classificationTable
		at: $_ asInteger
		put: (Scanner allowUnderscoreAsAssignment
			ifTrue: [ #special ]
			ifFalse: [ #alphabetic ])