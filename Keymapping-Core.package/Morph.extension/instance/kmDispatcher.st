*Keymapping-Core
kmDispatcher
	^ self valueOfProperty: #kmDispatcher ifAbsentPut: [KMDispatcher target: self]