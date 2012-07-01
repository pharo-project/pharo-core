dispatching
sentTo: anObject
	"Dispatch the receiver into anObject"
	self type == #dropFilesEvent ifTrue:[^anObject handleDropFiles: self].