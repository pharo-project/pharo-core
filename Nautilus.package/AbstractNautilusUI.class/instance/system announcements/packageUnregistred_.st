packageUnregistred: anAnnouncement
	| package |
	self showGroups
		ifTrue: [ ^ self ].
	package := anAnnouncement package.
	self selectedPackage = package
		ifTrue: [ self selectedPackage: nil ].
	packagesSelection at: package put: false.
	window isDisplayed
		ifFalse: [ ^ self ].
	self updatePackageView