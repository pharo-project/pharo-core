classRemoved: anAnnouncement
	
	| class oldPackage |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	class := anAnnouncement classRemoved.
	((self showGroups 
	and: [ self selectedGroup ifNil: [ ^self ] ifNotNil: [:gp | gp elements includes: class ]]) 
	or: [ self classWidget getClassesList  includes: class ])
			ifTrue: [
				self selectedClass = class
					ifTrue: [ self selectedClass: nil ].
				window isDisplayed ifFalse: [ ^ self ].
				oldPackage := RPackageOrganizer default packageMatchingExtensionName: (anAnnouncement categoryName).
				self removeFromPackagesIconsCache: oldPackage.
				self updatePackageGroupAndClassList ].
	