visitVariableNode: aVariableNode
	super visitVariableNode: aVariableNode.
	self flag: #TBD. "needs to be extendend to other kinds of variables"
	aVariableNode isGlobal ifTrue: [  
		self analyseForLinksForVariables: aVariableNode binding variable ]