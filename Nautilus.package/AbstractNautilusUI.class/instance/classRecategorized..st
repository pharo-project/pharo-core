system announcements
classRecategorized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	self selectedClass = anAnnouncement classRecategorized
		ifTrue: [ self update ]