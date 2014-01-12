update30690
	"self new update30690"
	self withUpdateLog: '12483 Update LRUCache Implementation - Step 4 - Deleted the old LRUCache code
	https://pharo.fogbugz.com/f/cases/12483
'.
	self loadTogether: self script343 merge: false.
	self flushCaches.
