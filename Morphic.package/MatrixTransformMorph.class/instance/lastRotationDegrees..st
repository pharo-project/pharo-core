flexing
lastRotationDegrees: deg
	deg = 0.0 
		ifTrue:[self removeProperty: #lastRotationDegrees]
		ifFalse:[self setProperty: #lastRotationDegrees toValue: deg]