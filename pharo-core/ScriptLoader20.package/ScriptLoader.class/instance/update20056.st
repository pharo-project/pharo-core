pharo - updates
update20056
	"self new update20056"
	self withUpdateLog: 'Issue 5820:	RPackage and Monticello dependency
	http://code.google.com/p/pharo/issues/detail?id=5820
	
Issue 5823:	remove update stream posting from MCConfiguration Browser
	http://code.google.com/p/pharo/issues/detail?id=5823

Issue 5826:	New versions of Spec
	http://code.google.com/p/pharo/issues/detail?id=5826'.
	self loadTogether: self script46 merge: false.
	self flushCaches.
