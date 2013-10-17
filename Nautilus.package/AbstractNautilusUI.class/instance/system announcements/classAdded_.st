classAdded: anAnnouncement
	
	| class |
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement classAdded.
	((self showGroups 
	and: [ self selectedGroup ifNil: [ ^ self ] ifNotNil: [:gp | gp elements includes: class ]]) 
	or: [ self selectedPackage = (self parentOfClass: class)])
				ifTrue: [
					self updateClassView.
					self removeFromPackagesIconsCache: class package ]