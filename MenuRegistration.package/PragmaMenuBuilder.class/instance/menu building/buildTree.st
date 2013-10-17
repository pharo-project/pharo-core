buildTree
	"Retrieve all menu registrations with the help of a PragmaCollector then, 
	reorganise the tree and sort it  - see class comment for more informations"
	itemList
		ifNil: [
			itemList := OrderedCollection new.
			self collectRegistrations.
			self arrangeRegistrations.
			self sortRegistrations]