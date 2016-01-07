fromAnnouncement: anAnnouncement


	super fromAnnouncement: anAnnouncement.
	
	critics := anAnnouncement critics collect: [ :critic |
		critic rule class name ]