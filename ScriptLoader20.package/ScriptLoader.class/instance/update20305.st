pharo - updates
update20305
	"self new update20305"
	self withUpdateLog: 'Issue 6647:	Auto creation of Monticello packages (by RPackage ?)
	http://code.google.com/p/pharo/issues/detail?id=6647
	
Issue 6608:	FileReference>>item
	http://code.google.com/p/pharo/issues/detail?id=6608
	
Issue 6605:	Write Common UI Test
	http://code.google.com/p/pharo/issues/detail?id=6605
	
Issue 6655:	SubscriptOutOfBounds: 1 when clearing a list in PluggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=6655'.
	self loadTogether: self script292 merge: false.
	self flushCaches.
