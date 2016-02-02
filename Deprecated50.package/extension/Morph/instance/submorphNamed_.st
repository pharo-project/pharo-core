submorphNamed: aName
	self 
		deprecated: 'do not use'
		on: 	'2 February 2016' 
		in: 'Pharo-5.0-50562-'.
	^ self submorphNamed: aName ifNone: [nil]