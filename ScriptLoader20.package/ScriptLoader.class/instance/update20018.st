pharo - updates
update20018
	"self new update20018"
	self withUpdateLog: 'Issue 5709:	#getSourceFromFile should not be called from external clients
	http://code.google.com/p/pharo/issues/detail?id=5709
	
Issue 5648:	self world in HaloMorph is nil
	http://code.google.com/p/pharo/issues/detail?id=5648
	
Issue 5666:	Unable to open the menu with one click mouse (again)
	http://code.google.com/p/pharo/issues/detail?id=5666
	
Issue 5619:	PluggableListMorph drag/drop raise DNU
	http://code.google.com/p/pharo/issues/detail?id=5619'.
	self loadTogether: self script12 merge: false.
	self flushCaches.
