instance creation
named: aString blocks: aCollection

	| instance |
	instance := self basicNew
					name: aString;
					blocks: aCollection;
					initialize;
					yourself.
	GroupAnnouncer announcer announce: (AGroupHasBeenCreated group: instance).
	^ instance