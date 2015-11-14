selection
	| start tweekedSubstring |
	
	tweekedSubstring := badSubstring isSymbol
		ifTrue: [ badSubstring keywords first ]
		ifFalse: [ badSubstring ].
	
	start := (target definition indexOfSubCollection: tweekedSubstring startingAt: 1).
	
	^ start to: start + tweekedSubstring size - 1