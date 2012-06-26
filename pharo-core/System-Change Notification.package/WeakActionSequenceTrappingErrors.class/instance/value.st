evaluating
value
	"Do the same as my parent, but make sure that all actions that do not  
	give errors are evaluated before resignaling the ones that gave errors  
	(giving the chance to clients to handle them)."

	^self valueStartingFrom: 1