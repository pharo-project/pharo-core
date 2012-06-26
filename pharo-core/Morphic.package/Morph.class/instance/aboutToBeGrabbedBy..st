dropping/grabbing
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand."
	| extentToHandToHand |
	self formerOwner: owner.
	self formerPosition: self position.
	(extentToHandToHand := self valueOfProperty: #expandedExtent)
		ifNotNil:	[self removeProperty: #expandedExtent.
			self extent: extentToHandToHand].
	^self "Grab me"