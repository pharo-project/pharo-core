accepted
	| input |
	
	self close.
	
	input := self model text trimBoth.
	input isEmpty ifTrue: [ ^self ].
	
	input first = $:
		ifTrue: [ self resolveExpression: input allButFirst ]
		ifFalse: [ self resolveSymbol: input asSymbol ]