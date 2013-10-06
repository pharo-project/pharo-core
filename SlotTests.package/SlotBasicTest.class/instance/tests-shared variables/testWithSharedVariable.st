testWithSharedVariable

	aClass := self make: [ :builder | 
		builder sharedVariables: 'Var' ].
	aClass class 
		compile: 'var:x  Var:=x';
		compile: 'var  ^Var'.
	
	aClass var: true.
	
	self assert: aClass classVarNames equals: #(Var).
	self assert: aClass var.