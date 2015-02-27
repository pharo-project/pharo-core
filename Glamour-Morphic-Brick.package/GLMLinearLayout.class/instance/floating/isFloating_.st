isFloating: aBrick
	
	aBrick layoutProperties floating = #none ifTrue: [ ^ false ].
	
	^ self respondsTo: (self floatingMethodFor: aBrick layoutProperties floating)