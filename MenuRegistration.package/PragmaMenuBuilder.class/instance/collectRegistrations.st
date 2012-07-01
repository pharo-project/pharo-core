registrations handling
collectRegistrations
	"Retrieve all pragma methods and evaluate them by passing the 
	MenuRegistration class as argument. The result is a list of trees
	stored in my itemList inst var"
	self pragmaCollector
		do: [:prg | self
				currentRoot: self
				while: [prg methodClass theNonMetaClass perform: prg selector with: (MenuRegistration owner: self)]].
