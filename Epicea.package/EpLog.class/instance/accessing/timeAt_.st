timeAt: anEntry

	^ self 
		timeAt: anEntry 
		ifAbsent: [ self error ]