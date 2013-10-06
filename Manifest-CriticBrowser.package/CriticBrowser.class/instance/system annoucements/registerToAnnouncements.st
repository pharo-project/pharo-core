registerToAnnouncements
	
	SystemAnnouncer uniqueInstance weak
		on: ClassModifiedClassDefinition send: #classModified: to: self;
		on: MethodModified send: #methodModified: to: self;
		on: MethodRemoved send: #methodRemoved: to: self.
	self window window announcer on: WindowClosed send: #onWindowClosed to: self.	