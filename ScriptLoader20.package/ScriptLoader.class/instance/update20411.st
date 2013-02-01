pharo - updates
update20411
	"self new update20411"
	self withUpdateLog: 'Issue 7006:	Obsolete Ref to ChangeSorter
	http://code.google.com/p/pharo/issues/detail?id=7006
	
Issue 6928:	Obsolete class after running all tests
	http://code.google.com/p/pharo/issues/detail?id=6928'.
	self loadTogether: self script390 merge: false.
	FileServices removeObsolete.
	self flushCaches.
