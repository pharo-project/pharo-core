whenPrimarySelectionUpdatedInModel: anAnnouncement
	self announcer announce: anAnnouncement.
	self setSelection: self getSelectionFromModel.

