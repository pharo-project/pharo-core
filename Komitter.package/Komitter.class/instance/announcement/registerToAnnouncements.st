registerToAnnouncements

	SystemAnnouncer uniqueInstance weak	
		when: MCPackageModified send: #mcPackageModified: to: self;
		when: ClassAdded, ClassModifiedClassDefinition, ClassRenamed, ClassCommented send: #classModified: to: self;
		when: ClassRepackaged send: #classMoved: to: self;
		when: ClassRemoved send: #classRemoved: to: self;
		when: MethodAdded, MethodModified, MethodRecategorized send: #methodModified: to: self;
		when: MethodRepackaged send: #methodMoved: to: self;
		when: MethodRemoved send: #methodRemoved: to: self