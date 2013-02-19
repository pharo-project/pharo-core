*Fuel
serializeTestFailureContext: aContext toFileNamed: aFilename
	| serializer |
	
	serializer := FLSerializer newDefaultWithMethodSupport.
	self encodeDebugInformationOn: serializer. 
	serializer addPostMaterializationAction: [ :materialization | 
		Smalltalk tools debugger
			openContext: materialization root
		   	label: 'This is the new debugger!'
		   	contents: nil ].
		
	serializer
		" use the sender context, generally the current context is not interesting"
		serialize: aContext
		toFileNamed: aFilename