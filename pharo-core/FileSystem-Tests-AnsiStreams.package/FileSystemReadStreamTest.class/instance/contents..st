support
contents: aByteArray
	stream := filesystem writeStreamOn: 'griffle'.
	stream nextPutAll: aByteArray.
	stream close.
	stream := filesystem readStreamOn: 'griffle'