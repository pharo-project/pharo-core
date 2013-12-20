stepText
	| text |
	
	text := (AthensViewMorph >> ('step' , self stepNumber asString) asSymbol) sourceCode.
	
	^ text allButFirst: (text indexOf: Character cr)
