pharo - updates
update20422
	"self new update20422"
	self withUpdateLog: 'Issue 7069:	Better pop up menu entries
	http://code.google.com/p/pharo/issues/detail?id=7069
	
Issue 7068:	Fixed smartCharacter
	http://code.google.com/p/pharo/issues/detail?id=7068
	
Issue 7066:	Hot-Fix for MC version serializer
	http://code.google.com/p/pharo/issues/detail?id=7066'.
	self loadTogether: self script401 merge: false.
	self flushCaches.
