announce: anAnnouncementClass

	| announcement |
	announcement := anAnnouncementClass on: self.
	SystemAnnouncer uniqueInstance announce: announcement.