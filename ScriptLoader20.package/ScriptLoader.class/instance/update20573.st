pharo - updates
update20573
	"self new update20573"
	self withUpdateLog: 'Issue 7580:	VM sometimes crashes when running test NBExternalEnumFromPairsTest>>#testCallbackAAA under Windows
	http://code.google.com/p/pharo/issues/detail?id=7580'.
	self loadTogether: self script548 merge: false.
	self flushCaches.
