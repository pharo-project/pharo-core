storeOn: aStream
	| sizeField |
	(sizeField := self sizeField) > 0	ifTrue:
		[aStream nextPut: $(].
	aStream nextPut: $(; print: self class.
	sizeField = 0
		ifTrue:
			[aStream
				nextPutAll: ' forPointer: '; nextPutAll: self addressField storeStringHex]
		ifFalse:
			[aStream
				nextPutAll: ' basicNew: '; print: sizeField + 4; nextPut: $);
				crtab; nextPutAll: 'sizeFieldPut: '; print: sizeField.
			 sizeField > 0 ifTrue:
				[1 to: sizeField by: 4 do:
					[:i| | v |
					(v := self unsignedLongAt: i) ~= 0 ifTrue:
						[aStream
							nextPut: $;; crtab;
							nextPutAll: 'unsignedLongAt: '; print: i;
							nextPutAll: ' put: '; print: v]]].
				aStream nextPut: $;; crtab; nextPutAll: #yourself].
	aStream nextPut: $)