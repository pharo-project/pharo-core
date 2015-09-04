on: anAnnouncementClass send: aSelector to: anObject 
	self 
		deprecated: 'Use when:send:to: instead'
		on: 	'3 September 2015' 
		in: 'Announcements-Core'.
	^ self when: anAnnouncementClass send: aSelector to: anObject 