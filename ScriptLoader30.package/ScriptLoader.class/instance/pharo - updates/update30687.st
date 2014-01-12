update30687
	"self new update30687"
	self withUpdateLog: '12615 Update LRUCache Implementation - Step 1B - Changed existing instances of LRUCache to OldLRUCache
	https://pharo.fogbugz.com/f/cases/12615
'.
	self loadTogether: self script340 merge: false.
	self flushCaches.
