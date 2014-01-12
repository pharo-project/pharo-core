includes: object
	self do: [ :each |
		each = object ifTrue: [ ^ true ] ].
	^ false