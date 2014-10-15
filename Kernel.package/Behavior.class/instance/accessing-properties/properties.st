properties
	^ ClassProperties at: self ifAbsentPut: WeakKeyDictionary new
		