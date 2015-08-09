formatArray: anArrayNode
	anArrayNode statements
		do: [ :each | 
				self visitNode: each. 
				codeStream nextPut: $..
				self newLine ]