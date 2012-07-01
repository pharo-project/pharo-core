initialize
initializePresenter

	toolbar okAction: [ 
		classNameTextField getText ifNotNil: [:cn |
			categoryField getText ifNotNil: [:cat |
				descriptionHolder contents
									addClassNamed: cn
									categorized: cat  ]]].
	
	descriptionHolder whenChangedDo: [:desc || acDesc | 
		acDesc:= desc addClassDescription.
		classNameTextField text: acDesc newClassName.
		categoryField text: acDesc category ]