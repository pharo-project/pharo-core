pharo - updates
update20419
	"self new update20419"
	self withUpdateLog: 'Issue 7040:	Move InvalidDirectoryError to Url package (sole user)
	http://code.google.com/p/pharo/issues/detail?id=7040
	
Issue 7050:	Critics Browser
	http://code.google.com/p/pharo/issues/detail?id=7050
	
Issue 6956:	Some Ring tests are dependent on Monticello
	http://code.google.com/p/pharo/issues/detail?id=6956
'.
	self loadTogether: self script398 merge: false.
	self flushCaches.
