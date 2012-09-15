as yet unclassified
announce: anAnnouncement
	self isSuspended 
		ifFalse: [ 
			self private announce: anAnnouncement.
			super announce: anAnnouncement ]