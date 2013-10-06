currentlyLoadedExtensionClassesInVersion
	| classes |
	classes := Dictionary new.
	self
		projectDo: [ :ignored |  ]
		packageDo: [ :packageSpec | 
			| wc |
			wc := [ packageSpec workingCopy ] on: Error do: [ :ex | ex return: nil ].
			wc ~~ nil
				ifTrue: [ wc packageInfo extensionClasses do: [:cl |
						classes at: cl put: (wc packageInfo extensionCategoriesForClass: cl)]] ]
		groupDo: [ :ignored |  ].
	^ classes