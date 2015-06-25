visitAssignmentNode: anAssignmentNode 


	valueTranslator visitNode: anAssignmentNode value.
	self emitMetaLinkBefore: anAssignmentNode.
	self visitVariableWrite: anAssignmentNode variable.
	anAssignmentNode variable binding emitStore: methodBuilder
