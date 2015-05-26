registerToMethodAnnouncements
	
	SystemAnnouncer uniqueInstance weak
		when: MethodModified send: #methodModified: to: self;
		when: MethodRemoved send: #methodRemoved: to: self.