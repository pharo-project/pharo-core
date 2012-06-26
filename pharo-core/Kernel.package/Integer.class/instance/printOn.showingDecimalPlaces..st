printing
printOn: aStream showingDecimalPlaces: placesDesired
	"Same as super, but provides a faster implementation because fraction part and rounding are trivial."
	
	self printOn: aStream base: 10.
	placesDesired <= 0
		ifFalse:
			[aStream nextPut: $..
			0 printOn: aStream base: 10 length: placesDesired padded: true].