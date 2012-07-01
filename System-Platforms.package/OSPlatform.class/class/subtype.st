system attributes
subtype
	"Return the subType of the platform we're running on"
	"Smalltalk platformSubtype"

	^ (Smalltalk vm getSystemAttribute: 1003)