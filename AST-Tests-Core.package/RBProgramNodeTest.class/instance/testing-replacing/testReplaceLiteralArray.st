testReplaceLiteralArray
	| tree |
	tree := self parseMethod: 'run "1" #(1 2 3) "2"'.
	tree body statements first
		replaceWith: (self parseExpression: '#[1 2 3]').
	self assert: tree newSource = 'run "1" #[1 2 3] "2"'.
	self assert: tree sourceInterval = (1 to: 20).
	self assert: tree body statements first sourceInterval = (9 to: 20).
	
	tree := self parseMethod: 'run "1" #(1 2 3) "2"'.
	tree body statements first
		replaceWith: (self parseExpression: '123').
	self assert: tree newSource = 'run "1" 123 "2"'.
	self assert: tree sourceInterval = (1 to: 15).
	self assert: tree body statements first sourceInterval = (9 to: 15).

	tree := self parseMethod: 'run "1" #[1 2 3] "2"'.
	tree body statements first
		replaceWith: (self parseExpression: '#(1 2 3)').
	self assert: tree newSource = 'run "1" #(1 2 3) "2"'.
	self assert: tree sourceInterval = (1 to: 20).
	self assert: tree body statements first sourceInterval = (9 to: 20).
	
	tree := self parseMethod: 'run "1" #[1 2 3] "2"'.
	tree body statements first
		replaceWith: (self parseExpression: '123').
	self assert: tree newSource = 'run "1" 123 "2"'.
	self assert: tree sourceInterval = (1 to: 15).
	self assert: tree body statements first sourceInterval = (9 to: 15)
