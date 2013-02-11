source code area
methodRecategorized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	(anAnnouncement methodClass = self selectedClass)
		ifTrue: [ self update ]