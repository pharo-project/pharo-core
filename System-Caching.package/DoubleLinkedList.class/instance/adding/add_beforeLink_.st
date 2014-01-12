add: anObjectOrLink beforeLink: otherLink
	| link otherLinkPredeccessor |
	otherLink = head
		ifTrue: [ ^ self addFirst: anObjectOrLink ].
	link := anObjectOrLink asDoubleLink.
	otherLinkPredeccessor := otherLink previousLink.
	otherLink previousLink: link.
	link nextLink: otherLink.
	link previousLink: otherLinkPredeccessor.
	otherLinkPredeccessor nextLink: link.
	^ link