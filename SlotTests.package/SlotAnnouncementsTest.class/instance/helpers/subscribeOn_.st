subscribeOn: anAnnouncement

	SystemAnnouncer uniqueInstance weak 
		on: anAnnouncement
		send: #add: 
		to: collectedAnnouncements