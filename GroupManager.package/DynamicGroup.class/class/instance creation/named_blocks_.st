named: aString blocks: aCollection

	| instance |
	instance := self new
					name: aString;
					blocks: aCollection;
					yourself.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenCreated group: instance).
	^ instance