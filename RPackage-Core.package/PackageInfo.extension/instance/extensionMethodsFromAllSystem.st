*RPackage-Core
extensionMethodsFromAllSystem
	^ Smalltalk allClassesAndTraits gather: [:classOrTrait | 
		(self extensionMethodsForClass: classOrTrait classSide), (self extensionMethodsForClass: classOrTrait)
		]