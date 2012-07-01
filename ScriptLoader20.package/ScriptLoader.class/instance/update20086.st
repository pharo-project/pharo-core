pharo - updates
update20086
	"self new update20086"
	self withUpdateLog: 'Issue 5930:	New versions of Spec
	http://code.google.com/p/pharo/issues/detail?id=5930
	
Issue 5925:	Lots of undeclared ivars
	http://code.google.com/p/pharo/issues/detail?id=5925
	
Issue 5911:	Float floorLog: 2 could be exact
	http://code.google.com/p/pharo/issues/detail?id=5911'.
	self loadTogether: self script75 merge: false.
	self flushCaches.
