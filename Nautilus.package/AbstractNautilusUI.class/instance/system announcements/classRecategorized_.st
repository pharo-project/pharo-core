classRecategorized: anAnnouncement
	
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].

	({ anAnnouncement oldCategory. anAnnouncement newCategory }
		anySatisfy: [ :each | self selectedPackage includesCategory: each ])
			ifTrue: [ self updateBothView ]