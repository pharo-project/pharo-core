newAnnouncementFor: aGTEventCollector
	^ self 
		updateAnnouncement: self newAnnouncement 
		withData: (self serialize: aGTEventCollector bundle).