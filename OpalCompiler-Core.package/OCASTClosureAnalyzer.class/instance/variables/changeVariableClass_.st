changeVariableClass: aVariableNode
	"after name analysis is done, we can specialize the AST Nodes for variables"

	aVariableNode isTemp ifTrue: [ 
		aVariableNode isArg 
			ifTrue: [ aVariableNode primitiveChangeClassTo: RBArgumentNode new  ]
			ifFalse: [aVariableNode primitiveChangeClassTo: RBTemporaryNode new ]].
	
	aVariableNode isInstance ifTrue: [ aVariableNode primitiveChangeClassTo: RBInstanceVariableNode new].
	aVariableNode isGlobal ifTrue: [ aVariableNode primitiveChangeClassTo: RBGlobalNode new ].
	aVariableNode isSpecialVariable ifTrue: [ 
		(aVariableNode name = 'thisContext') ifTrue: [ aVariableNode primitiveChangeClassTo: RBThisContextNode new  ].
		(aVariableNode name = 'self') ifTrue: [ aVariableNode primitiveChangeClassTo: RBSelfNode new  ].
		(aVariableNode name = 'super') ifTrue: [ aVariableNode primitiveChangeClassTo: RBSuperNode new  ]].