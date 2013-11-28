update30602
	"self new update30602"
	self withUpdateLog: '12260 testDuplicateClassWithNewName is broken
	https://pharo.fogbugz.com/f/cases/12260
'.
	self loadTogether: self script257 merge: false.
	self flushCaches.
