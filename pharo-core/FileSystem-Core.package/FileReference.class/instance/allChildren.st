enumerating
allChildren
	"Return all the files and folders recursively nested in the receiver"
	
	^ CollectVisitor breadthFirst: self collect: [:ea | ea reference]