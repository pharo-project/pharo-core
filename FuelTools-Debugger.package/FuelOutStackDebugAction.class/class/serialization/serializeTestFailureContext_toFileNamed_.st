serializeTestFailureContext: aContext toFileNamed: aFilename
	| serializer |
	
	serializer := FLSerializer newDefault.
	self encodeDebugInformationOn: serializer. 
	serializer addPostMaterializationAction: [ :materialization |
		FLPlatform current
			openDebuggerOnContext: materialization root label: 'External stack'].
		
	serializer
		" use the sender context, generally the current context is not interesting"
		serialize: aContext
		toFileNamed: aFilename