serializeTestFailureContext: aContext toFileNamed: aFilename
	| serializer |
	serializer := FLSerializer newDefault.
	self encodeDebugInformationOn: serializer.
	serializer
		addPostMaterializationAction:
			[ :materialization | 
			UIManager default
				debugProcess: Processor activeProcess
				context: materialization root
				label: 'External stack'
				fullView: false ].
	serializer serialize: aContext toFileNamed: aFilename
	" use the sender context, generally the current context is not interesting"