menu: aMenu shifted: aBoolean
	"Morphic API - The method should only be used internally for the communication between the model and the morphic widget" 
	"Build the menu when you right click on an item"

	^ menuHolder contents cull: aMenu cull: aBoolean