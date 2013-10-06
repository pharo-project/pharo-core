selectNewMethods
	"Selects all method definitions for which there is no counterpart method in the current image"

	Cursor read showWhile: 
		[ | change class |
		1 to: changeList size do:
			[:i | change := changeList at: i.
			listSelections at: i put: change isMethodNotDefinedInImage]].
	self changed: #allSelections