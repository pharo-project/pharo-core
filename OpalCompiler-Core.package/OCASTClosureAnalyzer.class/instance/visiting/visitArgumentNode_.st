visitArgumentNode: aVariableNode
	"mark argument nodes as such, if not already done"

	aVariableNode isArgument
		ifFalse: [ self changeVariableClass: aVariableNode ]