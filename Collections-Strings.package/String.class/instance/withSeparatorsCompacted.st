converting
withSeparatorsCompacted
	"replace each sequence of whitespaces by a single space character."
	"' test ' withSeparatorsCompacted "
	"' test test' withSeparatorsCompacted "
	"'test  test		 ' withSeparatorsCompacted"

	| in next isSeparator |
	self isEmpty ifTrue: [ ^ self ].

	^ self class new: self size streamContents: [:stream | | lastBlank |
		lastBlank := false.
		self do: [:c | 
			lastBlank 
				ifTrue: [
					(lastBlank := c isSeparator)
						ifFalse: [ stream nextPut: c ]] 
				ifFalse: [
					(lastBlank := c isSeparator)
						ifTrue: [ stream nextPut: $  ]
						ifFalse: [ stream nextPut: c ]]]].