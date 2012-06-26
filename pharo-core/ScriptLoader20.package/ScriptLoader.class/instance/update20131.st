pharo - updates
update20131
	"self new update20131"
	self withUpdateLog: '- Issue 6060:	New some ensure methods to FileSystem. Thanks Sean De Nigris and Mariano Martinez-Peck.
	http://code.google.com/p/pharo/issues/detail?id=6060.'.
	self loadTogether: self script121 merge: false.
	self flushCaches.
