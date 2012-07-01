protocol
register: aGroup

	groups add: aGroup.
	GroupAnnouncer announcer announce: (AGroupHasBeenRegistered with: aGroup)