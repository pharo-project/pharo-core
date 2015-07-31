packageRenamed: anAnnouncement
	window isDisplayed
		ifFalse: [ ^ self ].
	self updatePackageView