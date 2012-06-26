as yet unclassified
nextSymbol
	^ (String streamContents:
		[:s |
		[stream peek isAlphaNumeric] whileTrue: [s nextPut: stream next]]) asSymbol
			