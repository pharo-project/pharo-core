announcements-registration
registerToAnnouncements

	SystemAnnouncer announcer weak		
		on: MethodAdded send: #methodAdded: to: self;
		on: MethodModified send: #methodModified: to: self;
		on: MethodRecategorized send: #methodRecategorized: to: self;
		on: MethodRemoved send: #methodRemoved: to: self