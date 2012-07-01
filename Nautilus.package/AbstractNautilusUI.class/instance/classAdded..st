system announcements
classAdded: anAnnouncement
	
	| class |
	window ifNil: [^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement item.
	((self showGroups 
	and: [ self selectedGroup ifNil: [ ^ self ] ifNotNil: [:gp | gp elements includes: class ]]) 
	or: [ self selectedPackage = class package])
				ifTrue: [
					self updateClassView.
					self removeFromPackagesIconsCache: class package ]