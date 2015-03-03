ensureProperties
	^ TraitProperties at: self ifAbsentPut: WeakKeyDictionary new
		