mouseLeaveDragging: anEvent
	"The mouse has left with a button down."
	
	(self dropEnabled and: [anEvent hand hasSubmorphs]) 
		ifFalse: [ "no d&d" ^ super mouseLeaveDragging: anEvent].
	
	anEvent hand releaseMouseFocus: self.
	self basicHighlightRowIndexes: #().
	self refresh
		