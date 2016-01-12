updateBrowserFrom: anAnnouncement
	
	anAnnouncement action needsUpdate ifTrue: [
		self updateBrowser ]