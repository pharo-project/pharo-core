addFirst: anObjectOrLink
	| link |
	link := anObjectOrLink asDoubleLink.
	link nextLink: head.
	head ifNotNil: [ head previousLink: link ].
	tail ifNil: [ tail := link ].
	head := link.
	^ link