evaluate: aStream
	| result |
	[ 
	result := Smalltalk evaluate: aStream.
	self hasSessionChanged
		ifFalse: [ 
			self stdout
				print: result;
				lf ] ]
		on: Error
		do: [ :error | self handleError: error ]