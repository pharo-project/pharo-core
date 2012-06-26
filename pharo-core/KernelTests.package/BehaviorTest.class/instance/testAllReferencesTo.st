tests
testAllReferencesTo
	| result |
	result := SystemNavigation default allReferencesTo: Point binding.
	result do: [ :each | self assert: (each compiledMethod hasLiteral: Point binding) ].
	self assert: (result anySatisfy: [ :each | each actualClass = self class and: [ each selector = #testAllReferencesTo ] ]).
		
	result := SystemNavigation default allReferencesTo: #printOn:.
	result do: [ :each | self assert: (each compiledMethod hasLiteralThorough: #printOn:) ].
	self assert: (result anySatisfy: [ :each | each actualClass = self class and: [ each selector = #testAllReferencesTo ] ]).
	
	result := SystemNavigation default allReferencesTo: #+.
	result do: [ :each | self assert: ((each compiledMethod sendsSelector: #+) or: [ each compiledMethod hasLiteralThorough: #+ ]) ].
	self assert: (result anySatisfy: [ :each | each actualClass = self class and: [ each selector = #testAllReferencesTo ] ])