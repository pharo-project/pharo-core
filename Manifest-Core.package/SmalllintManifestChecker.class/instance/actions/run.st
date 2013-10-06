run
	rule resetResult.
	environment allClassesAndTraitsDo: [ :class |
		class isManifest 
			ifFalse: [
				self checkClass: class.
				self checkMethodsForClass: class ]]