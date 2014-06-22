layoutBounds
	"Return the bounds for laying out children of the receiver"

	| lb |
	
	lb := super layoutBounds.
	container ifNil: [ ^ lb ].
	^ (lb left: (lb left + self spacerWidth)) right: (lb right max: lb left + self spacerWidth)
