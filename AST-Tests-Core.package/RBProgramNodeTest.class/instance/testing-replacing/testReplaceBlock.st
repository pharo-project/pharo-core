testReplaceBlock
	| tree |
	tree := self parseMethod: 'run self foo ifNil: [ ^ true ]'.
	tree body statements first arguments first replaceWith: (self parseExpression: '[ ^ false ]').
	self
		assert:
			tree newSource
				=
					'run
	self foo ifNil: [ ^ false ]'.
	self assert: tree sourceInterval = (1 to: 32).
	self assert: tree body statements first arguments first sourceInterval = (21 to: 31)