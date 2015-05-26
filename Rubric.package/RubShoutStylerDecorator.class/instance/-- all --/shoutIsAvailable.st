shoutIsAvailable
	^ shoutIsAvailable ifNil: [ shoutIsAvailable := (Smalltalk at: #SHTextStylerST80 ifAbsent: []) notNil] 