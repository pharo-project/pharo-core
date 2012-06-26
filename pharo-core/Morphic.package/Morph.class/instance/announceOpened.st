announcements
announceOpened
	self announcer announce: (MorphOpened morph: self).
	self submorphs do: #announceOpened