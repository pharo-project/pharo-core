functions
	" choose a set of interprterProxy functions, depending on VM we're currently running on"
	^ (Smalltalk vm version beginsWith: 'Squeak') 
		ifTrue: [	Functions ]
		ifFalse: [ CogFunctions ]