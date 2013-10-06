run
	rule resetResult.
	environment allClassesAndTraitsDo: [ :class |
		self checkClass: class.
		self checkMethodsForClass: class ]