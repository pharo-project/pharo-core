endPrimNumber
	^ primNumber > 0
			ifTrue: [ primNumber ]
			ifFalse: [ self quickMethodPrim ]