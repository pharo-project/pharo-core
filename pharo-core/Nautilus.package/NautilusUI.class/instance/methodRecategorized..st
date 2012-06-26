system announcements
methodRecategorized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	(anAnnouncement item methodClass = self selectedClass)
		ifTrue: [ self update ]