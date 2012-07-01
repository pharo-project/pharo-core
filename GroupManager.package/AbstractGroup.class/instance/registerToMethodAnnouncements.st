announcements registration
registerToMethodAnnouncements
	
	SystemAnnouncer announcer weak
		on: MethodModified send: #methodModified: to: self;
		on: MethodRemoved send: #methodRemoved: to: self.