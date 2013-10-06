testConvertMethodContext
	| aSTMethodContext |
	aSTMethodContext := self methodContext asASTInterpreterContext.
	
	self assert: self methodContext outerContext asASTInterpreterContext equals: aSTMethodContext outerContext.
	self assert: self methodContext method = aSTMethodContext closure.
	self assert: self methodContext tempNames  = aSTMethodContext temporaries keys.
	self assert: self methodContext arguments  = aSTMethodContext arguments.
	self assert: self methodContext receiver = aSTMethodContext receiver.