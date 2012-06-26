pharo - updates
update20111
	"self new update20111"
	self withUpdateLog: 'Issue 6027:	PackageServices is unused and undocumented
	http://code.google.com/p/pharo/issues/detail?id=6027
	
Issue 6028:	fix typo in #printPrimitiveOn:
	http://code.google.com/p/pharo/issues/detail?id=6028
	
Issue 6026:	New version of Spec 0.4
	http://code.google.com/p/pharo/issues/detail?id=6026'.
	self loadTogether: self script101 merge: false.
	self flushCaches.
