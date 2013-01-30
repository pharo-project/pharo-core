pharo - updates
update20309
	"self new update20309"
	self withUpdateLog: 'Issue 6650:	RBInternalSpellChecker not using 2.0 API
	http://code.google.com/p/pharo/issues/detail?id=6650'.
	self loadTogether: self script296 merge: false.
	self flushCaches.
