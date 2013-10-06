initialize

	super initialize.

	users := SortedCollection new 
					sortBlock: [:a :b | a username printString < b username printString ];
					asValueHolder.
	
	currentUser := nil.
	self addDefaultUser.