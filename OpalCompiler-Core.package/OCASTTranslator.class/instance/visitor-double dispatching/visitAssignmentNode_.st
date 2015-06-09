visitAssignmentNode: anAssignmentNode 


	valueTranslator visitNode: anAssignmentNode value.
	self visitVariableWrite: anAssignmentNode variable.
	anAssignmentNode variable binding emitStore: methodBuilder
