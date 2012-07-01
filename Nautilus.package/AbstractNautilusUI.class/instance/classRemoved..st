system announcements
classRemoved: anAnnouncement
	
	| class oldPackage |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement item.
	((self showGroups 
	and: [ self selectedGroup ifNil: [ ^self ] ifNotNil: [:gp | gp elements includes: class ]]) 
	or: [ self getList2 includes: class ])
			ifTrue: [
				self selectedClass = class
					ifTrue: [ self selectedClass: nil ].
				window isDisplayed ifFalse: [ ^ self ].
				oldPackage := RPackageOrganizer default packageNamed: (anAnnouncement event environmentAt: #category).
	self removeFromPackagesIconsCache: oldPackage.
				self updateBothView ].
	