whenEditorDeleted: anAnnouncement
	anAnnouncement morph activeHand removeEventListener: self.
	anAnnouncement morph announcer unsubscribe: self.
	stringMorph := nil.
	editor := nil