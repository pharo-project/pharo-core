freshFromFile: aFileReference

	^ (self fromFile: aFileReference)
		refresh;
		yourself