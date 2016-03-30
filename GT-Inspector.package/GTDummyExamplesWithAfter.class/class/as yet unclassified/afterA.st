afterA
	self gtExampleContext removeKey: #b2.
	self gtExampleContext removeKey: #c2.
	
	self assert: self gtExampleContext isEmpty