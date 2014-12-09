submorphAfter

	"Return the submorph after (behind) me, or nil"
	| link |
	link := self privateBrickDoubleLink.
	link ifNil: [ ^ nil ].
	link nextLink ifNil: [ ^ nil ].
	^ link nextLink value