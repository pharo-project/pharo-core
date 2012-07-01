menu actions
selectUnchangedMethods
	"Selects all method definitions for which there is already a method in the current image, whose source is exactly the same."
	
	Cursor read showWhile: 
	[ | class change |1 to: changeList size do:
		[:i | change := changeList at: i.
		listSelections at: i put: change isUnchangedMethod]].
	self changed: #allSelections