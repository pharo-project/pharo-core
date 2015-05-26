add: anObjectOrLink afterLink: otherLink
	| link otherLinkSuccessor |
	otherLink = tail
		ifTrue: [ ^ self addLast: anObjectOrLink ].
	link := anObjectOrLink asDoubleLink.
	otherLinkSuccessor := otherLink nextLink.
	otherLink nextLink: link.
	link previousLink: otherLink.
	link nextLink: otherLinkSuccessor.
	otherLinkSuccessor previousLink: link.
	^ link