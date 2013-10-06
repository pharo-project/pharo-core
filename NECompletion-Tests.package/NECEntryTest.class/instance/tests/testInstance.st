testInstance
	| entry |
	entry := NECInstVarEntry 
		contents: 'abc'
		type: #instVar:.
	self assert: entry isInstance