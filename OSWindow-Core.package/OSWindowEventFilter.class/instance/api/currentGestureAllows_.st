currentGestureAllows: aSymbol
	^ currentGestureSymbol = #unactive
		or: [ currentGestureSymbol = aSymbol 
		or: [ (allowingDictionary at: currentGestureSymbol) includes: aSymbol ] ]