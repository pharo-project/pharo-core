cleaning
cleanupProtocols: aWorkingCopy
	aWorkingCopy packageInfo extensionClasses do: [ :class |
		(aWorkingCopy packageInfo extensionCategoriesForClass: class) do: [ :category |
			(class organization listAtCategoryNamed: category) isEmpty
				ifTrue: [ class organization removeCategory: category ] ] ].
	aWorkingCopy packageInfo classesAndMetaClasses do: [ :class |
		(aWorkingCopy packageInfo coreCategoriesForClass: class) do: [ :category |
			(class organization listAtCategoryNamed: category) isEmpty
				ifTrue: [ class organization removeCategory: category ] ] ]