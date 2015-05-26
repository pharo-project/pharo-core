paddingForPosition: aPositionNumber
	| padding |
	
	padding := aPositionNumber \\ self align.
	padding = 0 
		ifFalse: [ padding := self align - padding ].
		
	^ padding