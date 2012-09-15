instance creation
named: aString blocks: aCollection

	| instance |
	instance := self basicNew
					name: aString;
					blocks: aCollection;
					initialize;
					yourself.
	GroupAnnouncer uniqueInstance announce: (AGroupHasBeenCreated group: instance).
	^ instance