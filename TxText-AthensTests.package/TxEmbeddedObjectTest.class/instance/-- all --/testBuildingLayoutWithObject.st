testBuildingLayoutWithObject
	| theObject   |
	theObject := Object new.
	(text startPosition moveRight:5) insertObject: theObject.

	"null containter don't allows embedded objects"
	self should: [ view resetLayout ] raise: Error.

	