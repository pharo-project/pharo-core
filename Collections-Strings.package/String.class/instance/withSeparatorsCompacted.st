converting
withSeparatorsCompacted
	"replace each sequences of whitespace by a single space character"
	"' test ' withSeparatorsCompacted = ' test '"
	"' test test' withSeparatorsCompacted = ' test test'"
	"'test test		' withSeparatorsCompacted = 'test test '"

	| out in next isSeparator |
	self isEmpty ifTrue: [^ self].

	out := (String new: self size) writeStream.
	in := self readStream.
	isSeparator := [:char | char asciiValue < 256
				and: [CSSeparators includes: char]].
	[in atEnd] whileFalse: [
		next := in next.
		(isSeparator value: next)
			ifTrue: [
				out nextPut: $ .
				[in atEnd or:
					[next := in next.
					(isSeparator value: next)
						ifTrue: [false]
						ifFalse: [out nextPut: next. true]]] whileFalse]
			ifFalse: [out nextPut: next]].
	^ out contents