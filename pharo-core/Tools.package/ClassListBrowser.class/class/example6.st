examples
example6
	"Put up a ClassListBrowser that shows all classes that have class instance variables"

	self
		browseClassesSatisfying: 
			[:c | c class instVarNames size > 0]
		title:
			'Classes that define class-side instance variables'

"ClassListBrowser example6"