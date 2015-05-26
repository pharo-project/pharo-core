testCreateContext

	| context |
	
	context := 
		Context 
			sender: nil
			receiver: 1
			method: (self class compiledMethodAt: #dummyMethod: )
			arguments: #( 55 ).
			
		
	^ context