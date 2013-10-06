visitAssignmentNode: anAssignmentNode 

	valueTranslator visitNode: anAssignmentNode value.
	anAssignmentNode variable binding emitStore: methodBuilder
