registerToSystemAnnouncements

	self browsedEnvironment packageOrganizer announcer weak
		on: RPackageCreated send: #packageCreated: to: self;
		on: RPackageUnregistered send: #packageUnregistred: to: self;
		on: RPackageRenamed send: #packageRenamed: to: self.
		
	SystemAnnouncer uniqueInstance weak
		on: ClassAdded send: #classAdded: to: self;
		on: ClassCommented send: #classCommented: to: self;
		on: ClassRecategorized send: #classRecategorized: to: self;
		on: ClassModifiedClassDefinition send: #classDefinitionModified: to: self;
		on: ClassRemoved send: #classRemoved: to: self;
		on: ClassRenamed send: #classRenamed: to: self;
		on: ClassReorganized send: #classReorganized: to: self;
		
		on: MethodAdded send: #methodAdded: to: self;
		on: MethodModified send: #methodModified: to: self;
		on: MethodRecategorized send: #methodRecategorized: to: self;
		on: MethodRemoved send: #methodRemoved: to: self;
		
		on: ProtocolAdded send: #classReorganized: to: self;
		on: ProtocolRemoved send: #classReorganized: to: self.
	