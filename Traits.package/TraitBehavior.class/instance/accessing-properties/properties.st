properties
	^ TraitProperties at: self ifAbsentPut: WeakKeyDictionary new
		