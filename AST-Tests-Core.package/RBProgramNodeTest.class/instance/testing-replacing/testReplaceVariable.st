testReplaceVariable
	| tree |
	tree := self parseMethod: 'run "1" foo "2"'.
	tree body statements first
		replaceWith: (self parseExpression: 'zork').
	self assert: tree newSource = 'run "1" zork "2"'.
	self assert: tree sourceInterval = (1 to: 16).
	self assert: tree body statements first  sourceInterval = (9 to: 16).
	
	tree := self parseMethod: 'run "1" foo "2"'.
	tree body statements first
		replaceWith: (self parseExpression: '123').
	self assert: tree newSource = 'run "1" 123 "2"'.
	self assert: tree sourceInterval = (1 to: 15).
	self assert: tree body statements first  sourceInterval = (9 to: 15)