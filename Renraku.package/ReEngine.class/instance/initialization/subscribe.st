subscribe

	SystemAnnouncer uniqueInstance weak
		when: ClassModifiedClassDefinition send: #classDefinitionModified: to: self;
		when: ClassCommented send: #classCommented: to: self;
		when: ClassRenamed send: #classModified: to: self;
		when: MethodModified send: #methodModified: to: self;
		when: MethodRecategorized send: #methodRecategorized: to: self