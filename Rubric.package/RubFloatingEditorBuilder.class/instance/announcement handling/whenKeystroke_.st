whenKeystroke: anAnnouncement
	anAnnouncement event keyCharacter = Character escape
		ifTrue: [String cr.self closeEditor ]