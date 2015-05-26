sourceIn: a
	^ a smalltalkCode 
		smalltalkClass: [ :each | each method methodClass ]; 
		display: [ :each | each sourceCode ]