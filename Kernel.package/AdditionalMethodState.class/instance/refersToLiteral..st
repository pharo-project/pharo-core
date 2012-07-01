testing
refersToLiteral: aLiteral 
	^ self pragmas anySatisfy: [ :pragma | pragma hasLiteral: aLiteral ]