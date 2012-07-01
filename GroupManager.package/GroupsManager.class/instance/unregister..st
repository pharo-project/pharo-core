protocol
unregister: aGroup

	groups remove: aGroup.
	GroupAnnouncer announcer announce: (AGroupHasBeenUnregistered with: aGroup)