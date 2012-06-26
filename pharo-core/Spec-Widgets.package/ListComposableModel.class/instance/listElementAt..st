private-morphic
listElementAt: anIndex
	"Morphic API - The method should only be used internally for the communication between the model and the morphic widget" 
	"Return the item at index _anIndex_"
	
	^ self listItems at: anIndex ifAbsent: [ nil ]