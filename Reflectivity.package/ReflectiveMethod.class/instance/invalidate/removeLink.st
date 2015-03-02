removeLink
	self decreaseLinkCount.
	self linkCount = 0 ifTrue: [ self destroyTwin ]
		