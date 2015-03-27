isAsciiString

	^ self allSatisfy: [ :each | each asciiValue <= 127 ]
