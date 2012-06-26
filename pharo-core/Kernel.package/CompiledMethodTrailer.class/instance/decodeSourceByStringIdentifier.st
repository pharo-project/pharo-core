decoding
decodeSourceByStringIdentifier

	"A method source is determined by a class + string identifier"
	| len |
	
	len := self decodeLengthField.

	data := (ReadStream on: method from: method size - size+1 to: method size - size + len) contents asString convertFromEncoding: 'utf8'