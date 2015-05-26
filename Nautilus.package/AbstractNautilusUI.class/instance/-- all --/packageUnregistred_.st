packageUnregistred: anAnnouncement
	| package |
	self showGroups
		ifTrue: [ ^ self ].
	package := anAnnouncement package.
	self selectedPackage = package
		ifTrue: [ self selectedPackage: nil ].
	self packageWidget selectPackage: package.
	window isDisplayed
		ifFalse: [ ^ self ].
	self updatePackageView