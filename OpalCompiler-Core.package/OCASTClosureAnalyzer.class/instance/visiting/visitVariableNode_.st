visitVariableNode: aVariableNode
	"re-lookup the temorary variables..."
	
	| var |
	self changeVariableClass: aVariableNode.
	aVariableNode isTemp ifFalse: [^self].
	var := scope lookupVar: aVariableNode name.
	aVariableNode binding: var.
	var isTempVectorTemp ifTrue: [scope addCopyingTempToAllScopesUpToDefVector: var vectorName].
	var isCopying ifTrue: [scope addCopyingTempToAllScopesUpToDefTemp: var].