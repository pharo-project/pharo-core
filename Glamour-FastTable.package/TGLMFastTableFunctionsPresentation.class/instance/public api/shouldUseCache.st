shouldUseCache
	^ self parameters 
		at: 'shouldUseCache'
		ifAbsent: [ false ]