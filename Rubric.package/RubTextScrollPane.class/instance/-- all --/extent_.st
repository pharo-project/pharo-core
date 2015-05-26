extent: newExtent
	"Update the receiver's extent. Hide/show the scrollbars and resize the scroller
	as neccessary."

	| previousBounds |
	previousBounds := self bounds copy.
	previousBounds extent = newExtent
		ifTrue: [ ^ self ].
	super extent: newExtent.
	self owner ifNotNil: [ :o | o scrollerExtentChanged ].
	self wrapped
		ifTrue: [ self updateScrollbars ]