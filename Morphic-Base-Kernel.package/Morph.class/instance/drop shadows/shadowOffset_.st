shadowOffset: aPoint
	"Set the current shadow offset"
	(aPoint isNil or:[(aPoint x isZero) & (aPoint y isZero)])
		ifTrue:[self removeProperty: #shadowOffset]
		ifFalse:[self setProperty: #shadowOffset toValue: aPoint].