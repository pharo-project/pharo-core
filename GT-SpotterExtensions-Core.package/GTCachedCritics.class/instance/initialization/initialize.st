initialize
	super initialize.
	
	SystemAnnouncer uniqueInstance weak 
		when: ClassAnnouncement send: #classChanged: to: self