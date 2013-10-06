testCreateContext

	| context |
	
	context := 
		MethodContext 
			sender: nil
			receiver: 1
			method: (self class compiledMethodAt: #dummyMethod: )
			arguments: #( 55 ).
			
		
	^ context