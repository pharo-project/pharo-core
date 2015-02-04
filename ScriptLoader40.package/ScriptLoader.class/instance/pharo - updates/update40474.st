update40474
	"self new update40474"
	self withUpdateLog: '14491 inconsistent state LRUCache if ifAbsentPut: block modifies the cache
	https://pharo.fogbugz.com/f/cases/14491

14857 Replacing occurrences of abc {1} xyz with foo {1} bar in browser doesnt work
	https://pharo.fogbugz.com/f/cases/14857'.
	self loadTogether: self script474 merge: false.
	self flushCaches.
