system triggers
classCommented: aClass
	"A class with the given name was commented in the system."

	self announce: (CommentedEvent class: aClass)