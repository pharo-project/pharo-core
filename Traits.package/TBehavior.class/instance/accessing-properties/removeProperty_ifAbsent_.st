removeProperty: propName ifAbsent: aBlock
	| property |
	property := self properties
		removeKey: propName
		ifAbsent: aBlock.
	self removePropertiesIfEmpty.
	^ property