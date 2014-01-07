addFirst: aString 
	
	^ mutex critical: [ value addFirst: aString ]