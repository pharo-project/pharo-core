system triggers
classCommented: aClass inCategory: aCategoryName 
	"A class with the given name was commented in the system."

	self trigger: (CommentedEvent class: aClass category: aCategoryName)