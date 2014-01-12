update30689
	"self new update30689"
	self withUpdateLog: '12482 Update LRUCache Implementation - Step 3 - Use the new LRUCache code
	https://pharo.fogbugz.com/f/cases/12482
'.
	self loadTogether: self script342 merge: false.
	self flushCaches.
