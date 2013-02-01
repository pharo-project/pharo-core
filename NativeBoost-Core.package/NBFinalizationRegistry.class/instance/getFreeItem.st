private
getFreeItem
	| item nextFree |
	nextFreeIndex ifNil: [ self grow ].
	item := items at: nextFreeIndex.
	nextFreeIndex := item nextFreeIndex.
	^ item