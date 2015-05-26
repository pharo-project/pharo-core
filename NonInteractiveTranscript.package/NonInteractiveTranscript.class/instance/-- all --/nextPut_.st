nextPut: aCharacter
	^ self critical: [ 
		self stream nextPut: aCharacter ]