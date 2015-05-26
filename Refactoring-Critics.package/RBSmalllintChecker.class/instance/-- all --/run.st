run
	rule resetResult.
	environment classesAndTraits
		do: [ :class |
			self checkClass: class.
			self checkMethodsForClass: class.
			
			self checkClass: class classSide.
			self checkMethodsForClass: class classSide ]
		displayingProgress: [ :class | 'Running critics on: ', class name ]