posixName: aString 
	^ self
		isoString: (aString copyReplaceAll: '_' with: '-')