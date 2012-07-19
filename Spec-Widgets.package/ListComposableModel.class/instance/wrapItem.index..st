private-morphic
wrapItem: anObject index: index
	"Morphic API - The method should only be used internally for the communication between the model and the morphic widget" 
	"Return the item _anObject_ wrapped"

	^ wrapBlockHolder contents cull: anObject cull: index