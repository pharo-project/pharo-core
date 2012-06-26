as yet unclassified
classInstVarNamesFor: aPseudoClass
	| tokens |
	
	self flag: #traits.
	aPseudoClass metaClass hasDefinition ifFalse: [^ #()].
	tokens := Scanner new scanTokens: aPseudoClass metaClass definition.
	"tokens size = 4 ifFalse: [self error: 'Unrecognized metaclass definition']."
	^ tokens last findTokens: ' '