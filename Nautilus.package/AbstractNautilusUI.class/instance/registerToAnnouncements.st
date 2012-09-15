announcement registration
registerToAnnouncements

	SystemAnnouncer uniqueInstance weak
		on: RPackageCreated send: #packageCreated: to: self;"
		on: RPackageUnregistred send: #packageUnregistred: to: self;"
		on: RPackageRenamed send: #packageRenamed: to: self;
	
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
		
		on: ProtocolAdded send: #classRecategorized: to: self;
		on: ProtocolRemoved send: #classRecategorized: to: self.

	TestAnnouncer uniqueInstance weak
		on: TestCaseStarted send: #testCaseStarted: to: self;
		on: TestSuiteEnded send: #testRunned: to: self.
		
	SystemAnnouncer uniqueInstance weak	
		on: MCVersionCreated send: #newMCVersion: to: self;
		on: MCPackageModified send: #mcPackageModified: to: self;
		on: MCWorkingCopyCreated send: #mcWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #mcWorkingCopyDeleted: to: self.
		
	GroupAnnouncer uniqueInstance weak
		on: AGroupHasBeenRegistered send: #aGroupHasBeenRegistered: to: self;
		on: AGroupHasBeenUnregistered send: #aGroupHasBeenUnregistered to: self;
		on: AGroupHasBeenAdded send: #aGroupHasBeenAdded: to: self;
		on: AGroupHasBeenRemoved send: #aGroupHasBeenRemoved: to: self;
		on: AGroupHasBeenRenamed send: #aGroupHasBeenRenamed: to: self