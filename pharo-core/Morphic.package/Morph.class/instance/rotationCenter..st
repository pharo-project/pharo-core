rotate scale and flex
rotationCenter: aPointOrNil
	"Set the new rotation center of the receiver. The rotation center defines the relative offset inside the receiver's bounds for locating the reference position."
	aPointOrNil isNil
		ifTrue:[self removeProperty: #rotationCenter]
		ifFalse:[self setProperty: #rotationCenter toValue: aPointOrNil]
