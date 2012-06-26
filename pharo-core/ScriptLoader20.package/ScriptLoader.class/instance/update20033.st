pharo - updates
update20033
	"self new update20033"
	self withUpdateLog: 'Issue 5703:	Failing tests related to SystemNavigation
	http://code.google.com/p/pharo/issues/detail?id=5703
	
Issue 5694:	Failing tests related to RPackage
	http://code.google.com/p/pharo/issues/detail?id=5694'.
	self loadTogether: self script27 merge: false.
	self flushCaches.
