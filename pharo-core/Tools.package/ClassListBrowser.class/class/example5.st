examples
example5
	"Put up a ClassListBrowser that shows all classes that lack class comments"

	self
		browseClassesSatisfying: 
			[:c | c organization classComment isEmptyOrNil] 
		title: 'Classes lacking class comments'

"ClassListBrowser example5"
	