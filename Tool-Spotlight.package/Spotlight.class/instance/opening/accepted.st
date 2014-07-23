accepted
	| input |
	
	self close.
	
	input := contents trimBoth.
	input isEmpty ifTrue: [ ^self ].
	
	input first = $:
		ifTrue: [ self resolveExpression: input allButFirst ]
		ifFalse: [ self resolveSymbol: input asSymbol ]