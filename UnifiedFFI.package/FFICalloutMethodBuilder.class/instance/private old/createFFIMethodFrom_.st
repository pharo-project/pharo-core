createFFIMethodFrom: ffiPragmaNode
	^ RBMethodNode new
		arguments: (self method argumentNames collect: [ :each | RBVariableNode named: each ]);
		selector: self method selector;
		methodClass: self method methodClass;
		pragmas: {ffiPragmaNode};
		body: (RBMessageNode 
			receiver: (RBVariableNode named: 'self') 
			selector: #externalCallFailed) asReturnNode asSequenceNode;
		yourself	
	