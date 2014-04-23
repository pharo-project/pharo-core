registerInterestOnSystemChangesOnAnnouncer: anAnnouncer
	anAnnouncer 
		on: RPackageRenamed send: #packageRenamed: to: self;
		on: ClassAdded, ClassModifiedClassDefinition, ClassRenamed, ClassCommented send: #classModified: to: self;
		on: ClassRepackaged send: #classMoved: to: self;
		on: ClassRemoved send: #classRemoved: to: self;
		on: MethodAdded, MethodModified, MethodRecategorized send: #methodModified: to: self;
		on: MethodRepackaged send: #methodMoved: to: self;
		on: MethodRemoved send: #methodRemoved: to: self.