parse

	self initializeParsing.
	
	[ self isDoneParsing ] whileFalse: [ self parseNextPattern ].

	self isInvalidPattern ifTrue: [ ^ nil ].
	self convertTwoDigitsYear.

	^ self createDate