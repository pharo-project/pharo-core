tests
resultOfSerializeRemoveAndMaterialize: aClass

	self analyzer considerInternalBehavior: aClass.
	self serialize: aClass.
	self removeFromSystem: aClass.
	^self materialized
