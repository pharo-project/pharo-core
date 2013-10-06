setSelectionStateFor: anIndex at: aBoolean
	"Morphic API - The method should only be used internally for the communication between the model and the morphic widget" 
	"Set the selection state of the item at index _anIndex_ in the case of multiple selection list"

	self allowToSelect ifFalse: [ ^ self ].
	^ multiSelectionHolder at: anIndex put: aBoolean