private-morphic
wrapItem: anObject
	"Morphic API - The method should only be used internally for the communication between the model and the morphic widget" 
	"Return the item _anObject_ wrapped"

	^ wrapBlockHolder contents value: anObject