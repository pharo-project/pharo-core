announce
announce: anAnnouncement
	self isSuspended 
		ifFalse: [ 
			self class privateAnnouncer basicAnnounce: anAnnouncement.
			self basicAnnounce: anAnnouncement ]