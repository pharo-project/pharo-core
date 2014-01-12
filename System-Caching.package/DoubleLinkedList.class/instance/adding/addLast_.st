addLast: anObjectOrLink
	| link |
	link := anObjectOrLink asDoubleLink.
	link previousLink: tail.
	tail ifNotNil: [ tail nextLink: link ].
	head ifNil: [ head := link ].
	tail := link.
	^ link