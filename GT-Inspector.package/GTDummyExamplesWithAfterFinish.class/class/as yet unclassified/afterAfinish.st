afterAfinish
	self assert: (self gtExampleContext includesKey: #a).
	self gtExampleContext removeKey: #a.
	self assert: (self gtExampleContext includesKey: #a) not.
	
	self assert: (self gtExampleContext includesKey: #b).
	self gtExampleContext removeKey: #b.
	self assert: (self gtExampleContext includesKey: #b) not.
	
	self assert: (self gtExampleContext includesKey: #c).
	self gtExampleContext removeKey: #c.
	self assert: (self gtExampleContext includesKey: #c) not.