adding
at: key put: anObject 

	(self includesKey: key)
		ifFalse: [ keys add: key ].
		
	^ super at: key put: anObject 