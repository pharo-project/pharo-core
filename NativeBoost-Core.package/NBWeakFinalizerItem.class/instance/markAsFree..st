accessing
markAsFree: oldFreeIndex
	next := oldFreeIndex.
	executor := nil.
	"to make sure"
	self basicAt: 1 put: nil.