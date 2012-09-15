*RPackage-Core
extensionMethodsFromAllSystem
	^ Smalltalk allClassesAndTraits gather: [:classOrTrait | self extensionMethodsForClass: classOrTrait]