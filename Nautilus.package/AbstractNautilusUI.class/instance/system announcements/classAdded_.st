classAdded: anAnnouncement
	| class |
	window ifNil: [ ^ self ].
	window isDisplayed
		ifFalse: [ ^ self ].
	class := anAnnouncement classAdded.
	self selectedPackage = (self parentOfClass: class)
		ifTrue:
			[ 
			self updateClassView.
			self removeFromPackagesIconsCache: class package ]