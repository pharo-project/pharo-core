addClassCategoryBasedOn: aSelection
	| name package packageTag |

	packageTag := nil.
	package := aSelection package.
	name := UIManager default 
		request: ('New category: {1}-' format: { package name }) 
		initialAnswer: '' 
		title: 'Create a new category'.
	
	(self isValidPackageName: name)
		ifTrue: [ 
			| categoryName |
			categoryName := (package name, '-', name) asSymbol.
			SystemOrganization addCategory: categoryName.
			packageTag := package 
				classTagNamed: name 
				ifAbsent: [ self error: 'Ther was a problem with package registration' ] ]
		ifFalse: [ self alertInvalidPackageName: name ].
	
	^ packageTag