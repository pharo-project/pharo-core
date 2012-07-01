tests
resultOfSerializeRemoveAndMaterializeAll: objects

	| classesOrTraits |
	classesOrTraits := objects select: [ :anObject | anObject isBehavior or: [anObject isTrait]].
	self analyzer considerInternalAllBehaviors: classesOrTraits.
	self serialize: objects.
	classesOrTraits do: [ :aClassOrTrait | self removeFromSystem: aClassOrTrait . ].
	^self materialized
