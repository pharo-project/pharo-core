pharo - updates
update20091
	"self new update20091"
	self withUpdateLog: 'Issue 3343:	StringTest>>testWithoutQuoting and fixes for match: and withoutQuoting
	http://code.google.com/p/pharo/issues/detail?id=3343
	
Issue 5953:	spotlight DNU when looking for an inexistent identifier
	http://code.google.com/p/pharo/issues/detail?id=5953
	
Issue 5958:	automatic expand all in Monticello Changes and Merge
	http://code.google.com/p/pharo/issues/detail?id=5958'.
	self loadTogether: self script80 merge: false.
	self flushCaches.
