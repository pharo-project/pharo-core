encoding
encodeNativeCodeTrailer
" encode trailer in a form:
 <native code>
<variable length source pointer>
<trailer size>
<platform id>
<kind byte>
"
	| bytes platformId sourcePointer ptrBytes |
	platformId := data at: 1.
	bytes := data at: 2.
	sourcePointer := data at: 3.
	
	ptrBytes := ByteArray streamContents: [:str |
		| value |
		value := sourcePointer.
		[value > 0] whileTrue: [
			value > 127 ifTrue: [ str nextPut: 128 + (value bitAnd: 16r7F) ]
				ifFalse: [ str nextPut: value. ].
			value := value >> 7.
			].
		].
	ptrBytes := ptrBytes reversed.
	
	size := bytes size + ptrBytes size + 2 + 2 + 1.
	self assert: (size < 65536).
	self assert: (platformId < 65536).
	
	encodedData := ByteArray streamContents: [:str |
		str nextPutAll: bytes;
		nextPutAll: ptrBytes;
		nextPut: (size >> 8);
		nextPut: (size bitAnd: 255);
		nextPut: (platformId >> 8);
		nextPut: (platformId bitAnd: 255);
		nextPut: self kindAsByte ].
	
