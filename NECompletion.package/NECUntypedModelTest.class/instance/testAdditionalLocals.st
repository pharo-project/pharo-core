tests
testAdditionalLocals
	| model locals |
	model := NECUntypedModel 
		class: NECTestClass
		temporaries: (OrderedCollection 
				with: (NECLocalEntry 
						contents: 'a'
						type: #local)
				with: (NECLocalEntry 
						contents: 'b'
						type: #local))
		additionals: (Array with: (NECLocalEntry 
				contents: 'veryImp'
				type: #local))
		variables: true
		selectors: true.
	locals := model entriesOfType: #local.
	self assert: (locals includes: 'veryImp')