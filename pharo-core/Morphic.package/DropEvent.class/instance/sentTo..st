dispatching
sentTo: anObject
	"Dispatch the receiver into anObject"
	self type == #dropEvent ifTrue:[^anObject handleDropMorph: self].