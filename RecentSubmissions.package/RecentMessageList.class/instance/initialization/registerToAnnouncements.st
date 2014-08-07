registerToAnnouncements

	SystemAnnouncer uniqueInstance unsubscribe: self.
	
	SystemAnnouncer uniqueInstance weak
		"Class"
		on: ClassCommented send: #aClassHasBeenCommented: to: self;
		on: ClassRemoved send: #aClassHasBeenRemoved: to: self;
		on: ClassRenamed send: #aClassHasBeenRenamed: to: self;
		"Method"
		on: MethodAdded send: #aMethodHasBeenAdded: to: self;
		on: MethodModified send: #aMethodHasBeenModified: to: self;
		on: MethodRemoved send: #aMethodHasBeenRemoved: to: self