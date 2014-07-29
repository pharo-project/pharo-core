methodRecategorized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	((anAnnouncement methodClass = self selectedClass) or: [ anAnnouncement methodClass users includes: self selectedClass  ])
		ifTrue: [self update ]