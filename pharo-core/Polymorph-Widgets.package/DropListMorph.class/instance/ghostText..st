protocol
ghostText: aStringOrText
	| text |
	
	text := aStringOrText asText asMorph.
	text textColor: Color lightGray.
	
	self contentMorph contents = self defaultContents
		ifTrue: [ self contentMorph contents: text ].
	
	self defaultContents: text.