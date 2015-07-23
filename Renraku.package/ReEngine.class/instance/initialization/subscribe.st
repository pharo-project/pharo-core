subscribe

	SystemAnnouncer uniqueInstance weak
		on: ClassModifiedClassDefinition send: #classDefinitionModified: to: self;
		on: ClassCommented send: #classCommented: to: self;
		on: ClassRenamed send: #classModified: to: self;
		on: MethodModified send: #methodModified: to: self;
		on: MethodRecategorized send: #methodRecategorized: to: self