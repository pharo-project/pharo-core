whenKeystroke: anAnnouncement
	anAnnouncement event keyCharacter = Character escape
		ifTrue: [ self closeEditor ]