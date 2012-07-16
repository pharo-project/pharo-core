*multilingual-textConversion
unescapePercentsWithTextEncoding: encodingName 
	"decode string including %XX form"
	| unescaped char asciiVal specialChars oldPos pos converter |
	unescaped := ReadWriteStream on: String new.
	specialChars := '+%' asCharacterSet.
	oldPos := 1.
	[pos := self indexOfAnyOf: specialChars startingAt: oldPos.
	pos > 0]
		whileTrue: [unescaped
				nextPutAll: (self copyFrom: oldPos to: pos - 1).
			char := self at: pos.
			(char = $%
					and: [pos + 2 <= self size])
				ifTrue: [asciiVal := (self at: pos + 1) asUppercase digitValue * 16 + (self at: pos + 2) asUppercase digitValue.
					asciiVal > 255
						ifTrue: [^ self].
					unescaped
						nextPut: (Character value: asciiVal).
					pos := pos + 3.
					pos <= self size
						ifFalse: [char := nil].
					oldPos := pos]
				ifFalse: [char = $+
						ifTrue: [unescaped nextPut: Character space]
						ifFalse: [unescaped nextPut: char].
					oldPos := pos + 1]].
	oldPos <= self size
		ifTrue: [unescaped
				nextPutAll: (self copyFrom: oldPos to: self size)].
	converter := (TextConverter newForEncoding: encodingName)
				ifNil: [TextConverter newForEncoding: nil].
	^ [unescaped contents convertFromWithConverter: converter]
		on: Error
		do: ["the contents may be squeak-encoded"
			unescaped contents]