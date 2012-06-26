*RPackage-Core
extensionMethodsNotDefinedInSubCategories
	^ self externalBehaviorsNotDefinedInSubCategories gather: [:classOrTrait | self extensionMethodsForClass: classOrTrait]