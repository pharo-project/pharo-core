insertObject: anObject 
	"
	Insert an embedded object at receiver.
	Answer the position right after the inserted object.
	"
	^ span at: self insertObject: anObject.
