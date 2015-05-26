whenTextAcceptRequest: anAnnouncement

	" shout for the whole text "
	(next notNil and: [self okToStyle])
		ifTrue: [ self text: self text ]