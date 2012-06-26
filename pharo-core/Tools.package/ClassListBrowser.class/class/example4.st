examples
example4
	"Put up a ClassListBrowser that shows all classes implementing more than 100 methods"

	self browseClassesSatisfying:
		[:c | (c selectors size + c class selectors size) > 100] title: 'Classes with more than 100 methods'

"ClassListBrowser example4"
	