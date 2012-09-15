protocol
unregister: aGroup

	groups remove: aGroup.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenUnregistered with: aGroup)