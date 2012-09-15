protocol
register: aGroup

	groups add: aGroup.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenRegistered with: aGroup)