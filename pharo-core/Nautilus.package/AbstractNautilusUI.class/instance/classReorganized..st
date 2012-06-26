system announcements
classReorganized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	anAnnouncement item = self selectedClass
		ifTrue: [	self update ].