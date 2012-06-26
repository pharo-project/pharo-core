instance creation
browseClassesSatisfying: classBlock title: aTitle
	"Put up a ClassListBrowser showing all classes that satisfy the classBlock."

	self new
		initForClassesNamed:
			(self systemNavigation allClasses select:
					[:c | (classBlock value: c) == true]
				thenCollect:
					[:c | c name])
		title:
			aTitle