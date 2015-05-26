sourceIn: a
	^ a smalltalkCode 
		smalltalkClass: [ :each | each parents first methodClass ]; 
		display: [ :each | each source ]