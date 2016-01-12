newAnnouncementFor: aGTEventCollector
	| announcement |
	announcement := self 
		updateAnnouncement: self newAnnouncement 
		withData: (self serialize: aGTEventCollector bundle).
	aGTEventCollector updateAnnouncement: announcement.
	^ announcement