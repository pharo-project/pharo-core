initialize
	
	handle value = 0 ifTrue: [ 
		self error: 'Error creating new paint' ].
	
	"register to be finalized"
	NBExternalResourceManager addResource: self data: handle.