tests
testFormalParameterNames
	| method |
	method := #sampleMessageWithFirstArgument:andInterleavedCommentBeforeSecondArgument:.
	self assert: (self class formalParametersAt: method) size = 2.
	self assert: (self class formalParametersAt: method) asArray = #('firstArgument' 'secondArgument').
	Object selectorsDo: [:e |
		self assert: (Object formalParametersAt: e) size = e numArgs].