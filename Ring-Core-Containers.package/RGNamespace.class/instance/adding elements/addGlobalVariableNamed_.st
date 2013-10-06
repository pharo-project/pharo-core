addGlobalVariableNamed: globalVariableName
	"creates a RGGlobalVariableDefinition with the given name.
	It's verified that a pool with that name does not exist"
	| gv |

	(self includesGlobalVariableNamed: globalVariableName) ifTrue: [ ^self ].
	gv:= self factory createGlobalVariableNamed: globalVariableName.
	self addGlobalVariable: gv.