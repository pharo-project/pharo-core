pharo - updates
update20101
	"self new update20101"
	self withUpdateLog: 'Issue 5987:	Remove SARInstaller
	http://code.google.com/p/pharo/issues/detail?id=5987

Issue 5979:	Method names containing shortcut broken
	http://code.google.com/p/pharo/issues/detail?id=5979
	
Issue 5696:	Failing tests: Traits
	http://code.google.com/p/pharo/issues/detail?id=5696'.
	self loadTogether: self script91 merge: false.
	self flushCaches.
