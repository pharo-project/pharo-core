changed: anAspect with: anObject

	self announcer announce: (MorphChangedWithArguments new
		morph: self;
		selector: anAspect;
		arguments: anObject)