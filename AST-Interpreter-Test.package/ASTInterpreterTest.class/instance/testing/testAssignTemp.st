testAssignTemp
	self assert: (self interpret: '[ |x| x:=4. x] value') equals: 4.
	self should: [self interpret: '[ |x| x:=4. y] value'] raise: Error.
	self assert: (self interpret: 'ASTInterpreterTest new methodWithTemp') equals: 7.
	self assert: (self interpret: '|x| x:=4. x') equals: 4.
	self assert: (self interpret: '|x y| x:=4. y') equals: nil.
	self assert: (self interpret: '|x y| y:=x:=4. y') equals: 4.
	self assert: (self interpret: '|x y| y:=1. y:=x:=4. y') equals: 4.