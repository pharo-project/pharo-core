pharo - updates
update20503
	"self new update20503"
	self withUpdateLog: 'Issue 7381:	enhance menus
	http://code.google.com/p/pharo/issues/detail?id=7381
	
Issue 7374:	OrderedIdentityDictionary in a more general	package
	http://code.google.com/p/pharo/issues/detail?id=7374
	
Issue 7115:	cmd . in workspace erase the line
	http://code.google.com/p/pharo/issues/detail?id=7115'.
	self loadTogether: self script481 merge: false.
	self flushCaches.
