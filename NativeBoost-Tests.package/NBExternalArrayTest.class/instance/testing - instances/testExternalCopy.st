testExternalCopy

	| cls array copy |
	
	cls := self apiClass ofType: 'int32' .
		
	[
		array := cls externalNew: 10.
		array at: 1 put: 2.
		array at: 2 put: 3.
		copy := array copy.
	
		"#copy of external array should create a copy in object memory heap " 
		self assert: copy isExternal equals: false.
		
		"and , of course, copies should be equal "
		self assert: array = copy.	
	] ensure: [ array free ] 
	