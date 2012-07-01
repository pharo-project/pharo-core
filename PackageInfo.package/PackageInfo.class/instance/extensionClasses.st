listing
extensionClasses
	^ self externalBehaviors reject: [:classOrTrait | (self extensionCategoriesForClass: classOrTrait) isEmpty]