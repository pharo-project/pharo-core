encoding
encodeSourceByStringIdentifier
	"A method source is determined by a class + string identifier"
	
	[data isString] assert.
	encodedData := ByteArray streamContents: [:str | | utf8str len |
		utf8str := (data convertToEncoding: 'utf8') asByteArray.
		str nextPutAll: utf8str.
		len := self encodeLengthField: utf8str size.
		str nextPutAll: len.
		str nextPut: self kindAsByte + (len size -1)]