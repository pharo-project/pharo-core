packageChanged: anAnnouncement
	window isDisplayed
		ifFalse: [ ^ self ].
	self showGroups
		ifFalse: [ self updatePackageView ]