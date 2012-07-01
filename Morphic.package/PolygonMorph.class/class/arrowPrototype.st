instance creation
arrowPrototype
	"Answer an instance of the receiver that will serve as a prototypical arrow"

	| aa |
	aa := self new. 
	aa vertices: (Array with: 0@0 with: 40@40) 
		color: Color black 
		borderWidth: 2 
		borderColor: Color black.
	"aa setProperty: #noNewVertices toValue: true."
	"Revert to expected behavior. Remove vestigial code."
	aa makeForwardArrow.		"is already open"
	aa computeBounds.
	^ aa