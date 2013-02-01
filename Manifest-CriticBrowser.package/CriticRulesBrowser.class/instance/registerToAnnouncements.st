system annoucements
registerToAnnouncements

	SystemAnnouncer uniqueInstance weak
		"on: RPackageCreated send: #packageCreated: to: self;
		on: RPackageRenamed send: #packageRenamed: to: self;"
	
		"on: ClassAdded send: #classAdded: to: self;"
		"on: ClassCommented send: #classCommented: to: self;
		on: ClassRecategorized send: #classRecategorized: to: self;"
		on: ClassRemoved send: #classRemoved: to: self;
		"on: ClassRenamed send: #classRenamed: to: self;"
		"on: ClassReorganized send: #classReorganized: to: self;"
		
		on: MethodAdded send: #methodAdded: to: self;
		on: MethodModified send: #methodModified: to: self;
		
		on: MethodRemoved send: #methodRemoved: to: self.
		
"		on: ProtocolAdded send: #classRecategorized: to: self;
		on: ProtocolRemoved send: #classRecategorized: to: self."