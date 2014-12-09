addKey: aKey value: aValue
	| item newSize index |
	newSize := self size + 1.
	self ensureCapacity: newSize.
	index := self computeIndex: aKey.
	item := self itemClass key: aKey value: aValue next: (self table at: index).
	item keyHash: (self hashFor: aKey).
	self table at: index put: item.
	self size: newSize.