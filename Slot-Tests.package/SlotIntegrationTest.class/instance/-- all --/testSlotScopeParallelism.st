testSlotScopeParallelism
	"Proposed by Camille Teruel"

	| classesAndMetaclasses candidates classWithWrongSlotScope |
	classesAndMetaclasses := Smalltalk allClasses flatCollect: [ :each | { each. each class } ].

	candidates := classesAndMetaclasses reject: [ :each | 
		each superclass isNil or: [ 
			each layout slotScope isKindOf: LayoutEmptyScope ] ].

	classWithWrongSlotScope := candidates reject: [ :each | 
		each superclass layout slotScope == each layout slotScope parentScope ].

	self assert: classWithWrongSlotScope asArray equals: #()