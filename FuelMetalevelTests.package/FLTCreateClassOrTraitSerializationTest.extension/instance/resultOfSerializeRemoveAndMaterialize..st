tests
resultOfSerializeRemoveAndMaterialize: aClass

	self analyzer considerInternalAll: (Array with: aClass).
	self serialize: aClass.
	self removeFromSystem: aClass.
	^self materialized
