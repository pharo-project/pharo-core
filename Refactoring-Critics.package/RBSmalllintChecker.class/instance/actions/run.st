run
	rule resetResult.
	environment classesDo: [ :class |
		class isTrait ifFalse: [
			self checkClass: class.
			self checkMethodsForClass: class ] ]