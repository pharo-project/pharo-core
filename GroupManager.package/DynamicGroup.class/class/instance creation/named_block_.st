named: aString block: aBlock

	| instance |
	instance := self new
					name: aString;
					block: aBlock;
					yourself.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenCreated group: instance).
	^ instance