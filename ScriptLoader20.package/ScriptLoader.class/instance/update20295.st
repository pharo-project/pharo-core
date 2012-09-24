pharo - updates
update20295
	"self new update20295"
	self withUpdateLog: 'Issue 6692:	clean up #asTagWrapper
	http://code.google.com/p/pharo/issues/detail?id=6692
	
Issue 6683:	testUndeclared PackageTagWrapper SystemChangeNotifier
	http://code.google.com/p/pharo/issues/detail?id=6683

Issue 6678:	Failing tests related to OB
	http://code.google.com/p/pharo/issues/detail?id=6678
	'.
	self loadTogether: self script282 merge: false.
	self flushCaches.
