basicInspector: anEyeInspector
	inspector contents 
		ifNotNil: [ :inspect | 
			inspect owner: nil ].
	inspector contents: anEyeInspector.
	
	anEyeInspector 
		owner: self;
		ownerChanged.