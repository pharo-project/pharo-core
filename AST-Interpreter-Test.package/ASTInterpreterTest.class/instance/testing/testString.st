testString
	self assert: (self interpret: 'String withAll: #($h $e $l $l $o)') equals: 'hello'.
	self assert: (self interpret: '$a asSymbol') equals: #a.
	self assert: (self interpret: '''a''') equals: 'a'.
	self assert: (self interpret: '''a'' asSymbol') equals: #a.	
	self assert: (self interpret: '(String withAll: #($h $e $l $l $o)) asSymbol') equals: #hello.