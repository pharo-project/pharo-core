accessing
at: aFIleName put: anEntry
	^ entries 
		at: aFIleName 
		ifAbsentPut: [
			self modified.
			anEntry ]