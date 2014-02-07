register
	"Set up dependencies"
	
	SystemAnnouncer uniqueInstance weak
		on: ClassAdded send: #classAdded: to: self;
		on: ClassModifiedClassDefinition,
			ClassCommented,
			ClassRenamed, 
			ClassReorganized,
			ClassRenamed send: #classModified: to: self;
		on: ClassRemoved send: #classRemoved: to: self;		
		on: MethodAdded,
			MethodModified ,
			MethodRemoved send: #methodModified: to: self.
					
	MCWorkingCopy addDependent: self.
