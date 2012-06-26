instance creation
on: aStream migrations: aCollection
	
	^self basicNew
		initializeOn: aStream migrations: aCollection;
		yourself.