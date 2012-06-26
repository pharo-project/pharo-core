context stack menu
askForCategoryIn: aClass default: aString
	| categories category |
	categories := OrderedCollection withAll: (aClass allMethodCategoriesIntegratedThrough: Object).	
	category := UIManager default  
		chooseOrRequestFrom: categories
		title: 'Please provide a good category for the new method!' translated.
	category ifNil: [^aString].
	^ category isEmptyOrNil 
		ifTrue: [^ aString] 
		ifFalse: [ category ]