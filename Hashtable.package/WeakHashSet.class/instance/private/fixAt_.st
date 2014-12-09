fixAt: anInteger
	"remove all items at an index in the table who's key is garbage collected"
	| item lastItem |
	item := self table at: anInteger.
	
	[ item notNil and: [item key isNil ] ]
		whileTrue: [
			item := item next.
			self table at: anInteger put: item.
			self decrementSize ].
		
	item := self table at: anInteger.
	lastItem := item.
	[ item notNil ]
		whileTrue: [ 
			lastItem := item.
			item := item next.			
						
			[ item notNil and: [ item key isNil ] ]
				whileTrue: [
					item := item next.
					lastItem next: item.
					self decrementSize ] ].