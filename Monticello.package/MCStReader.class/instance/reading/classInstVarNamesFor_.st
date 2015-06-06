classInstVarNamesFor: aPseudoClass
	| tokens |
	
	self flag: #traits.
	aPseudoClass theMetaClass hasDefinitionSource ifFalse: [^ #()].
	tokens := aPseudoClass theMetaClass definitionSource parseLiterals.
	"tokens size = 4 ifFalse: [self error: 'Unrecognized metaclass definition']."
	^ tokens last findTokens: ' '