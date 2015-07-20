packageRegistered: anAnnouncement
	window ifNil: [ ^ self ].
	window isDisplayed
		ifFalse: [ ^ self ].
	self showGroups
		ifFalse: [ self updatePackageView ]