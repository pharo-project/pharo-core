ensureProperties
	method saveTemp: self.
	^ Properties at: self ifAbsentPut: WeakKeyDictionary new