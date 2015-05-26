sourceIn: a
	^ a smalltalkCode 
		smalltalkClass: [ :each | each method compiledMethod methodClass ]; 
		display: [ :each | each sourceNode source ] 