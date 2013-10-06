methodAdded: anAnnouncement

	anAnnouncement methodClass isManifest
		ifFalse: [ ^ self ].
	self updateCountOf: rulesModel selectedItem.
	self updateTree