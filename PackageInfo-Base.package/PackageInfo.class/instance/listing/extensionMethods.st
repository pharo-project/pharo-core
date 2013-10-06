extensionMethods
	^ (Smalltalk allClassesAndTraits, (Smalltalk allClasses collect: [:c | c class])) gather: [:classOrTrait | self extensionMethodsForClass: classOrTrait]