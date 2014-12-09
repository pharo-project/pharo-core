submorphBefore

	"Return the submorph before me, or nil"
	| link |
	link := self privateBrickDoubleLink.
	link ifNil: [ ^ nil ].
	link previousLink ifNil: [ ^ nil ].
	^ link previousLink value