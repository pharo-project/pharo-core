update30688
	"self new update30688"
	self withUpdateLog: '12481 Update LRUCache Implementation - Step 2 - Load the new LRUCache code
	https://pharo.fogbugz.com/f/cases/12481
'.
	self loadTogether: self script341 merge: false.
	self flushCaches.
