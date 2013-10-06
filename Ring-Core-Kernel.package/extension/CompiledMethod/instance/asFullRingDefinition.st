asFullRingDefinition

	"Retrieves an active RGMethodDefinition which knows its parent <class>.
	Note that the full conversion does not happen at the level of the class. If you need that request asFullRingDefinition to the class"
	| rgClass rgMethod |
	rgClass := self realClass asRingDefinition.
	rgMethod := self asActiveRingDefinition.
	rgMethod package: (RGContainer packageOfMethod: rgMethod).
	rgClass addMethod: rgMethod.
	^ rgMethod