keyPressed: anAnnouncement

	| key |
	key := anAnnouncement key.
	counter := counter +1.
	self stringMorph contents: 'Keys pressed: ', counter printString