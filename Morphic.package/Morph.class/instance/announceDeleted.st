announcements
announceDeleted
	self announcer announce: (MorphDeleted morph: self).
	self submorphs do: #announceDeleted