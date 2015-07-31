packageRegistered: anAnnouncement
	window ifNil: [ ^ self ].
	window isDisplayed
		ifFalse: [ ^ self ].
	self updatePackageView