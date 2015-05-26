ensureProperties
	^ ClassProperties at: self ifAbsentPut: WeakKeyDictionary new
		