instance creation
named: aString block: aBlock

	| instance |
	instance := self basicNew
					name: aString;
					block: aBlock;
					initialize;
					yourself.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenCreated group: instance).
	^ instance