run
	rule resetResult.
	environment allClassesAndTraits
		do: [ :class |
			self checkClass: class.
			self checkMethodsForClass: class ]
		displayingProgress: [ :class | 'Running critics on: ', class name ]