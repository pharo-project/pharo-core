subscribe

	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	SystemAnnouncer uniqueInstance weak
		when: ClassAdded   send: #classAdded: to: self;
		when: ClassRemoved send: #classRemoved: to: self