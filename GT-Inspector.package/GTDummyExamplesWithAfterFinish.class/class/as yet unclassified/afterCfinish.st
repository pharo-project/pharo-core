afterCfinish
	self assert: (self gtExampleContext includesKey: #c).
	self gtExampleContext removeKey: #c.
	self assert: (self gtExampleContext includesKey: #c) not.