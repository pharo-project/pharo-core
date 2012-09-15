pharo - updates
update20240
	"self new update20240"
	self withUpdateLog: 'Issue 5772:	Deprecate FileDirectory
	http://code.google.com/p/pharo/issues/detail?id=5772
	
Issue 6499:	New Nautilus version
	http://code.google.com/p/pharo/issues/detail?id=6499
	
Issue 6500:	New Nautilus version
	http://code.google.com/p/pharo/issues/detail?id=6500
	
Issue 6504:	Trait tests mess with the System Announcer
	http://code.google.com/p/pharo/issues/detail?id=6504'.
	self loadTogether: self script227 merge: false.
	self flushCaches.
