examples
example2
	"Put up a ClassListBrowser that shows all classes whose names start with 
	the letter S"

	self new
		initForClassesNamed: (self systemNavigation allClasses
				collect: [:c | c name]
				thenSelect: [:aName | aName first == $S])
		title: 'All classes starting with S'
	"ClassListBrowser example2"