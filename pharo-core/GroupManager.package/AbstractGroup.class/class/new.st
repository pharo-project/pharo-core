instance creation
new

	| instance |
	instance := self basicNew initialize.
	GroupAnnouncer announcer announce: (AGroupHasBeenCreated group: instance).
	^ instance