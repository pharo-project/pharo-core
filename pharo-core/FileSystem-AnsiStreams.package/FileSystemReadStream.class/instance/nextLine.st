ansi gettable
nextLine
	| char |
	^ ByteArray streamContents:
		[:out |
		[self atEnd or: [#(13 10) includes: (char := self next)]] whileFalse: [out nextPut: char].
		(char = 13 and: [self peek = 10]) ifTrue: [position := position + 1]].
	