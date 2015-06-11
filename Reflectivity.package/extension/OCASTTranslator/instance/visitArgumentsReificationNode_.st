visitArgumentsReificationNode: aNode
	"we store the TOS into the temp defined by the reification node"

	self flag: #TODO
	"here we need to pop off all arguments into temps, then create an array, then build up the stack again"

	aNode binding emitStore: methodBuilder.