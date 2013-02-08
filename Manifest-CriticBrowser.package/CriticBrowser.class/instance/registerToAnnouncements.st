system annoucements
registerToAnnouncements
	
	SystemAnnouncer uniqueInstance weak
	"	on: ClassRemoved send: #classRemoved: to: self;"
		on: ClassModifiedClassDefinition send: #classModified: to: self;
	"	on: MethodAdded send: #methodAdded: to: self;"
		on: MethodModified send: #methodModified: to: self;
		on: MethodRemoved send: #methodRemoved: to: self.
		
	
	self window window announcer on: WindowClosed do: [self onWindowClosed]	